# SdtmigDatasetVariableLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SdtmigDatasetVariableRef**](SdtmigDatasetVariableRef.md) |  | [optional] [default to undefined]
**codelist** | [**Array&lt;RootCtCodelistRefElement&gt;**](RootCtCodelistRefElement.md) |  | [optional] [default to undefined]
**modelClassVariable** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] [default to undefined]
**modelDatasetVariable** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] [default to undefined]
**parentDataset** | [**SdtmigDatasetRef**](SdtmigDatasetRef.md) |  | [optional] [default to undefined]
**rootItem** | [**RootSdtmigDatasetVariableRef**](RootSdtmigDatasetVariableRef.md) |  | [optional] [default to undefined]
**priorVersion** | [**SdtmigDatasetVariableRef**](SdtmigDatasetVariableRef.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SdtmigDatasetVariableLinks } from './api';

const instance: SdtmigDatasetVariableLinks = {
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
