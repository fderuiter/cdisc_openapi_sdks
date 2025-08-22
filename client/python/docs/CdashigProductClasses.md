# CdashigProductClasses


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
**links** | [**CdashigProductClassesLinks**](CdashigProductClassesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_product_classes import CdashigProductClasses

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigProductClasses from a JSON string
cdashig_product_classes_instance = CdashigProductClasses.from_json(json)
# print the JSON string representation of the object
print(CdashigProductClasses.to_json())

# convert the object into a dict
cdashig_product_classes_dict = cdashig_product_classes_instance.to_dict()
# create an instance of CdashigProductClasses from a dict
cdashig_product_classes_from_dict = CdashigProductClasses.from_dict(cdashig_product_classes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


