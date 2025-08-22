# QrsProduct


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**label** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**effectiveDate** | **string** |  | [optional] [default to undefined]
**untilDate** | **string** |  | [optional] [default to undefined]
**registrationStatus** | **string** |  | [optional] [default to undefined]
**version** | **string** |  | [optional] [default to undefined]
**qrsType** | **string** |  | [optional] [default to undefined]
**_links** | [**QrsProductLinks**](QrsProductLinks.md) |  | [optional] [default to undefined]
**items** | [**Array&lt;QrsItem&gt;**](QrsItem.md) |  | [optional] [default to undefined]

## Example

```typescript
import { QrsProduct } from './api';

const instance: QrsProduct = {
    name,
    label,
    description,
    effectiveDate,
    untilDate,
    registrationStatus,
    version,
    qrsType,
    _links,
    items,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
