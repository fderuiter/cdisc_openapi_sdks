# CdashigProduct


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
**links** | [**CdashigProductLinks**](CdashigProductLinks.md) |  | [optional] 
**classes** | [**List[CdashigClass]**](CdashigClass.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_product import CdashigProduct

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigProduct from a JSON string
cdashig_product_instance = CdashigProduct.from_json(json)
# print the JSON string representation of the object
print(CdashigProduct.to_json())

# convert the object into a dict
cdashig_product_dict = cdashig_product_instance.to_dict()
# create an instance of CdashigProduct from a dict
cdashig_product_from_dict = CdashigProduct.from_dict(cdashig_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


