# SendigDatasetVariablesLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SendigDatasetVariablesRef**](SendigDatasetVariablesRef.md) |  | [optional] [default to undefined]
**modelDataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] [default to undefined]
**parentClass** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] [default to undefined]
**priorVersion** | [**SendigDatasetVariablesRef**](SendigDatasetVariablesRef.md) |  | [optional] [default to undefined]
**datasetVariables** | [**Array&lt;SendigDatasetVariableRefElement&gt;**](SendigDatasetVariableRefElement.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SendigDatasetVariablesLinks } from './api';

const instance: SendigDatasetVariablesLinks = {
    self,
    modelDataset,
    parentProduct,
    parentClass,
    priorVersion,
    datasetVariables,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
