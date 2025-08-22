# Health


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**healthy** | **boolean** |  | [optional] [default to undefined]
**ldapAuthenticationHealthy** | **boolean** |  | [optional] [default to undefined]
**ldapAuthorizationHealthy** | **boolean** |  | [optional] [default to undefined]
**databaseHealthy** | **boolean** |  | [optional] [default to undefined]
**esHealthy** | **boolean** |  | [optional] [default to undefined]

## Example

```typescript
import { Health } from './api';

const instance: Health = {
    healthy,
    ldapAuthenticationHealthy,
    ldapAuthorizationHealthy,
    databaseHealthy,
    esHealthy,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
