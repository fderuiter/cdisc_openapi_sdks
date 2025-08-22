# SdtmClassLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] [default to undefined]
**parentClass** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] [default to undefined]
**subclasses** | [**Array&lt;SdtmClassRefSubclass&gt;**](SdtmClassRefSubclass.md) |  | [optional] [default to undefined]
**priorVersion** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SdtmClassLinks } from './api';

const instance: SdtmClassLinks = {
    self,
    parentProduct,
    parentClass,
    subclasses,
    priorVersion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
