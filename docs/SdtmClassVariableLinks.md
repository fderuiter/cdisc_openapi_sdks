# SdtmClassVariableLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] [default to undefined]
**parentProduct** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] [default to undefined]
**parentClass** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] [default to undefined]
**qualifiesVariables** | [**Array&lt;SdtmClassVariableRefQualifies&gt;**](SdtmClassVariableRefQualifies.md) |  | [optional] [default to undefined]
**rootItem** | [**RootSdtmClassVariableRef**](RootSdtmClassVariableRef.md) |  | [optional] [default to undefined]
**priorVersion** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SdtmClassVariableLinks } from './api';

const instance: SdtmClassVariableLinks = {
    self,
    parentProduct,
    parentClass,
    qualifiesVariables,
    rootItem,
    priorVersion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
