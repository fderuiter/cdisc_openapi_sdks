# CdashClassField


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**definition** | **str** |  | [optional] 
**question_text** | **str** |  | [optional] 
**prompt** | **str** |  | [optional] 
**simple_datatype** | **str** |  | [optional] 
**implementation_notes** | **str** |  | [optional] 
**mapping_instructions** | **str** |  | [optional] 
**links** | [**CdashClassFieldLinks**](CdashClassFieldLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_class_field import CdashClassField

# TODO update the JSON string below
json = "{}"
# create an instance of CdashClassField from a JSON string
cdash_class_field_instance = CdashClassField.from_json(json)
# print the JSON string representation of the object
print(CdashClassField.to_json())

# convert the object into a dict
cdash_class_field_dict = cdash_class_field_instance.to_dict()
# create an instance of CdashClassField from a dict
cdash_class_field_from_dict = CdashClassField.from_dict(cdash_class_field_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


