# SendigDatasetLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] [default to undefined]
**modelDataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] [default to undefined]
**parentClass** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] [default to undefined]
**priorVersion** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SendigDatasetLinks } from './api';

const instance: SendigDatasetLinks = {
    self,
    modelDataset,
    parentProduct,
    parentClass,
    priorVersion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
