# SendigDatasetVariableLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SendigDatasetVariableRef**](SendigDatasetVariableRef.md) |  | [optional] [default to undefined]
**codelist** | [**Array&lt;RootCtCodelistRefElement&gt;**](RootCtCodelistRefElement.md) |  | [optional] [default to undefined]
**modelClassVariable** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] [default to undefined]
**modelDatasetVariable** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] [default to undefined]
**parentDataset** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] [default to undefined]
**rootItem** | [**RootSendigDatasetVariableRef**](RootSendigDatasetVariableRef.md) |  | [optional] [default to undefined]
**priorVersion** | [**SendigDatasetVariableRef**](SendigDatasetVariableRef.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SendigDatasetVariableLinks } from './api';

const instance: SendigDatasetVariableLinks = {
    self,
    codelist,
    modelClassVariable,
    modelDatasetVariable,
    parentProduct,
    parentDataset,
    rootItem,
    priorVersion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
