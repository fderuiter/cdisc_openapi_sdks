# CdashProduct


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
**links** | [**CdashProductLinks**](CdashProductLinks.md) |  | [optional] 
**classes** | [**List[CdashClass]**](CdashClass.md) |  | [optional] 
**domains** | [**List[CdashDomain]**](CdashDomain.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_product import CdashProduct

# TODO update the JSON string below
json = "{}"
# create an instance of CdashProduct from a JSON string
cdash_product_instance = CdashProduct.from_json(json)
# print the JSON string representation of the object
print CdashProduct.to_json()

# convert the object into a dict
cdash_product_dict = cdash_product_instance.to_dict()
# create an instance of CdashProduct from a dict
cdash_product_from_dict = CdashProduct.from_dict(cdash_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


