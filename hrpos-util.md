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
| Dependent Project  | Replaced  |
| ------------- | ------------- |
| `mb-public-api`  | :white_check_mark:  |
| `central-api`  | :white_check_mark:  |
| `mb-ops`  | :white_check_mark:  |

Usage:
```
import DB from 'hrpos-util/db';
```

### redis
Handles Redis access
| Dependent Project  | Replaced  |
| ------------- | ------------- |
| `mb-public-api`  | :white_check_mark:  |
| `mb-ops`  | :white_check_mark:  |

Usage:
```
import * as Redis from 'hrpos-util/redis';
```

### http
Handles http requests
| Dependent Project  | Replaced  |
| ------------- | ------------- |
| `mb-ops`  | :white_check_mark:  |
| `mb-public-api`  | :white_check_mark:  |
| `central-api-broker`  | :white_check_mark:  |

Usage:
```
import * as HTTP from 'hrpos-util/http';
import { basicRequest } from 'hrpos-util/http';
```

## Tools
```
depcruise --config .dependency-cruiser.js mb-ops/events/
```