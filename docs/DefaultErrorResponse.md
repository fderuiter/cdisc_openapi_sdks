# DefaultErrorResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statusCode** | **string** | HTTP Status Code | [optional] [default to undefined]
**reasonPhrase** | **string** | HTTP Reason Phrase | [optional] [default to undefined]
**userMessage** | **string** | User Error Message | [optional] [default to undefined]
**adminMessage** | **string** | Admin Error Message | [optional] [default to undefined]

## Example

```typescript
import { DefaultErrorResponse } from './api';

const instance: DefaultErrorResponse = {
    statusCode,
    reasonPhrase,
    userMessage,
    adminMessage,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
