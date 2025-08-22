# SdtmDatasetVariablesLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SdtmDatasetVariablesRef**](SdtmDatasetVariablesRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] [default to undefined]
**parentClass** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] [default to undefined]
**priorVersion** | [**SdtmDatasetVariablesRef**](SdtmDatasetVariablesRef.md) |  | [optional] [default to undefined]
**datasetVariables** | [**Array&lt;SdtmDatasetVariableRefElement&gt;**](SdtmDatasetVariableRefElement.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SdtmDatasetVariablesLinks } from './api';

const instance: SdtmDatasetVariablesLinks = {
    self,
    parentProduct,
    parentClass,
    priorVersion,
    datasetVariables,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
