# SdtmProduct


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**links** | [**SdtmProductLinks**](SdtmProductLinks.md) |  | [optional] 
**classes** | [**List[SdtmClass]**](SdtmClass.md) |  | [optional] 
**datasets** | [**List[SdtmDataset]**](SdtmDataset.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_product import SdtmProduct

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmProduct from a JSON string
sdtm_product_instance = SdtmProduct.from_json(json)
# print the JSON string representation of the object
print(SdtmProduct.to_json())

# convert the object into a dict
sdtm_product_dict = sdtm_product_instance.to_dict()
# create an instance of SdtmProduct from a dict
sdtm_product_from_dict = SdtmProduct.from_dict(sdtm_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


