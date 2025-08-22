# CdashClass


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**CdashClassLinks**](CdashClassLinks.md) |  | [optional] 
**cdash_model_fields** | [**List[CdashClassField]**](CdashClassField.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_class import CdashClass

# TODO update the JSON string below
json = "{}"
# create an instance of CdashClass from a JSON string
cdash_class_instance = CdashClass.from_json(json)
# print the JSON string representation of the object
print(CdashClass.to_json())

# convert the object into a dict
cdash_class_dict = cdash_class_instance.to_dict()
# create an instance of CdashClass from a dict
cdash_class_from_dict = CdashClass.from_dict(cdash_class_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


