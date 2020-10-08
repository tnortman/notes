# Refactored Order Flow

-   Use `OnlineTicket` in Guest App
-   Consolidate Fastlane & Mobile Order flow
    -   `beginOrder` to replace `beginFastlaneOrder`, `beginMobileOrder` and prevent `beginDineInOrder`
-   Address, OrderInfo, Payment Derived from selectors rather than duplicated on another reducer
-   Remove duplicate `fetchConsumerConnectionStatus`
-   Less actions; more reacting to existing actions to update state
-   Move majority of OrderInfo to order slice
-   `GuestApp/order.ts` App specific BizLogic extension
-   Recent Orders via selector
- Added addressId to OnlineTicket
- new setOrderTime function to encapsulate setting holdDate

### Payments

-   payment methods are derived, rather than duplicated
-   changed checking partial gift amount to be implicit
-   Use new SavedPayment model which has shape of
    `{ ID: 123, Type: 18 }` so that we can cross reference paymentId with actual payment object in client apps without putting whole payment object on OnlineTicket (duplication of data)

### Shared Ticket/Setup/Order slices

-   `ticket` handle basic ticket json fetching; contains selector logic for ticket json fields
-   `setup` handle setup fetching; contains selector logic for setup fields
-   `order` handle ordering (OnlineTicket instance) actions; contains selector for OnlineTicket

```
 - GuestApp/store/reducers/
    - order.ts // Extension of orderSlice.ts

 - shared/store/slices/
    - order.ts // Shared slice
    - setup.ts // Shared slice
    - ticket.ts // Shared slice
```
