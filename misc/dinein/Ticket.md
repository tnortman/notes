# Cart/Ticket Merge

This PR is an attempt to merge Cart and Ticket into one component. Before this PR, we had two "views" in the Guest App that displayed an OrderTicket. Cart, which was used for Mobile/Fastlane orders, and Ticket, which was used for Scan To Pay, and partial payment orders. The difference between the two was Cart displayed an OrderTicket instance, whereas Ticke dispalyed a serialized OrderTicket instance (a ticket JSON blob). This PR merges the two implementations, siding with the Ticket UI implementation and bringing over all the functionality of a Cart (add/edit/remove items). Reasoning behind using Ticket UI? It' a JSON blob; we made the mistake before to use JS classes (OrderTicket model) in our React components. We should always strive to use simple data structures, like plain objects (JSON).

This PR will be pivotal to implementing Dine In. This will allow us to "flip a switch" on our order to make it "static" (no edits to be made. Think Scan to Pay) vs "editable" (add/remove/edit items. Think Mobile Order).

### Major Changes
- Deprecated & Removed: 
  - `views/CartReview`, `components/Cart`, `containers/OrderContainer`
- Split out TicketReview and Ticket into a more digestible, understandable component structure. 
  - Pulling in store state in components where needed in contrast to previously pulling in everything at the root (TicketReview) and prop drilling
- Rewrote the most assuredely confusing, TipButtons component :D (was hella buggy)
- Saga Navigation on submit & pay ticket success
- FlatList for Ticket Items/Adjustments/Discounts

  
### Other
- Rewrote OrderCard to use Ticket (was using Cart)
  - Use FlatList for RecentOrders
- New ActionButtons Component (`+ Add Item/Reward/Promo`)
- Always render items/discount/adjustments as TouchableOpacities (Buttons). If ticket is "editable" they respond to touch, otherwise appear static
- Changed quite a few selectors to follow `getXXX` convention vs `XXXSelector`
- **One** selector for tipButtonOptions and showTipSuggestions
- 
- Renamded: 
  - `ticketSuccess` -> `fetchTicketSuccess`
  - `ticketFailure` -> `fetchTicketFailure`
  
  
Figured I'd throw in the high level struct for the TicketReview page:

## TicketReview 

### Ticket
- Header (Ticket Info) 
- FlatList
  - Items
  - Discounts
  - Adjustments
  - Action Buttons (+ Add Item/Reward/Promo)
  - Footer - Taxes & Adjustments 
- Totals
  - Ticket Total
  - Other Payments
  - Tip
- Transactions
  - CC/Gift/Cash Payments

### Ticket Options
  - Order Info Button
  - Order Type Buttons
  - Tip Buttons
  - PaymentsButtons

### Footer Button (Submit/Pay)