# hrpos-util

### Purpose
House AWS, low level helpers

```
└── hrpos-util
    └── aws
        └── db
        └── s3
        └── sqs
        └── ses
        └── lambda
        └── elasticsearch
        └── sftp
        └── pipeline
        └── codebuild
        └── dyanmo
        └── firehose
        └── redis
    └── http
    └── twilio
```

### db

Handles DB access
| Dependent Project | Replaced |
| ------------- | ------------- |
| `mb-public-api` | :white_check_mark: |
| `central-api` | :white_check_mark: |
| `mb-ops` | :white_check_mark: |
| `lambda/projects/online-order` | :ballot_box_with_check: |
| `lambda/projects/consumer` | :ballot_box_with_check: |
| `lambda/projects/pay` | :ballot_box_with_check: |

### redis

Handles Redis access
| Dependent Project | Replaced |
| ------------- | ------------- |
| `mb-public-api` | :white_check_mark: |
| `mb-ops` | :white_check_mark: |
| `lambda/projects/online-order` | :ballot_box_with_check: |
| `lambda/projects/consumer` | :ballot_box_with_check: |
| `lambda/projects/pay` | :ballot_box_with_check: |

### http

Handles http requests
| Dependent Project | Replaced |
| ------------- | ------------- |
| `mb-ops` | :white_check_mark: |
| `mb-public-api` | :white_check_mark: |
| `central-api-broker` | :white_check_mark: |
| `lambda/projects/online-order` | :ballot_box_with_check: |
| `lambda/projects/consumer` | :ballot_box_with_check: |
| `lambda/projects/pay` | :ballot_box_with_check: |

## Tools
```
depcruise --config .dependency-cruiser.js mb-ops/events/
```