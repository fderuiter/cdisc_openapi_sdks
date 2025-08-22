# SdtmigProduct


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
**links** | [**SdtmigProductLinks**](SdtmigProductLinks.md) |  | [optional] 
**classes** | [**List[SdtmigClass]**](SdtmigClass.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_product import SdtmigProduct

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigProduct from a JSON string
sdtmig_product_instance = SdtmigProduct.from_json(json)
# print the JSON string representation of the object
print(SdtmigProduct.to_json())

# convert the object into a dict
sdtmig_product_dict = sdtmig_product_instance.to_dict()
# create an instance of SdtmigProduct from a dict
sdtmig_product_from_dict = SdtmigProduct.from_dict(sdtmig_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


