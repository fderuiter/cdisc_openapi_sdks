# SdtmProduct


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**label** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**source** | **string** |  | [optional] [default to undefined]
**effectiveDate** | **string** |  | [optional] [default to undefined]
**registrationStatus** | **string** |  | [optional] [default to undefined]
**version** | **string** |  | [optional] [default to undefined]
**_links** | [**SdtmProductLinks**](SdtmProductLinks.md) |  | [optional] [default to undefined]
**classes** | [**Array&lt;SdtmClass&gt;**](SdtmClass.md) |  | [optional] [default to undefined]
**datasets** | [**Array&lt;SdtmDataset&gt;**](SdtmDataset.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SdtmProduct } from './api';

const instance: SdtmProduct = {
    name,
    label,
    description,
    source,
    effectiveDate,
    registrationStatus,
    version,
    _links,
    classes,
    datasets,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
