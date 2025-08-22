# CdashProductClasses


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
**links** | [**CdashProductClassesLinks**](CdashProductClassesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_product_classes import CdashProductClasses

# TODO update the JSON string below
json = "{}"
# create an instance of CdashProductClasses from a JSON string
cdash_product_classes_instance = CdashProductClasses.from_json(json)
# print the JSON string representation of the object
print(CdashProductClasses.to_json())

# convert the object into a dict
cdash_product_classes_dict = cdash_product_classes_instance.to_dict()
# create an instance of CdashProductClasses from a dict
cdash_product_classes_from_dict = CdashProductClasses.from_dict(cdash_product_classes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


