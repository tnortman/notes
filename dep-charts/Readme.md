# High Level Dependency Graphs

The following are high level dependency graphs. Each node represents usage of some files in that folder. For example, `central-api` has a dependency on `mb-public-api`. `central-api` uses some files from the `mb-public-api/db` path. In order to break the dependency of `mb-public-api`, for `central-api` we would need to move `db` functionality into a shareable package.


Steps to breaking up project dependencies:

1. **Find** inter-project dependencies :white_check_mark:
3. **Determine** where functionality belongs `hrpos-utils`, `hrpos-models`, or `hrpos-lib`
3. **Move** shared dependency
4. **Remove** from external-dependency (`hrpos-utils`, `hrpos-models`, or `hrpos-lib`)
5. **Link** new dependency

Projects are sorted from top to botttom based on ease of breaking dependencies.

## central-api
![Alt text](./central-api/high-level-dependency-graph.svg)

## mb-ops
![Alt text](./mb-ops/high-level-dependency-graph.svg)

## pay-api
![Alt text](./pay-api/high-level-dependency-graph.svg)

## mb-public-api
![Alt text](./mb-public-api/high-level-dependency-graph.svg)


## consumer-api
![Alt text](./consumer-api/high-level-dependency-graph.svg)

## online-order
![Alt text](./online-order/high-level-dependency-graph.svg)
