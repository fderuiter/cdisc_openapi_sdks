# SdtmigClassLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] [default to undefined]
**modelClass** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] [default to undefined]
**parentClass** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] [default to undefined]
**subclasses** | [**Array&lt;SdtmigClassRefSubclass&gt;**](SdtmigClassRefSubclass.md) |  | [optional] [default to undefined]
**priorVersion** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SdtmigClassLinks } from './api';

const instance: SdtmigClassLinks = {
    self,
    modelClass,
    parentProduct,
    parentClass,
    subclasses,
    priorVersion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
