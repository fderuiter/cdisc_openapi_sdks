# SendigClassLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] [default to undefined]
**modelClass** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] [default to undefined]
**parentClass** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] [default to undefined]
**subclasses** | [**Array&lt;SendigClassRefSubclass&gt;**](SendigClassRefSubclass.md) |  | [optional] [default to undefined]
**priorVersion** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SendigClassLinks } from './api';

const instance: SendigClassLinks = {
    self,
    modelClass,
    parentProduct,
    parentClass,
    subclasses,
    priorVersion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
