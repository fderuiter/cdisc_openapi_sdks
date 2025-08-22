# CdashigScenarioField


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**definition** | **str** |  | [optional] 
**question_text** | **str** |  | [optional] 
**prompt** | **str** |  | [optional] 
**completion_instructions** | **str** |  | [optional] 
**implementation_notes** | **str** |  | [optional] 
**simple_datatype** | **str** |  | [optional] 
**mapping_instructions** | **str** |  | [optional] 
**core** | **str** |  | [optional] 
**links** | [**CdashigScenarioFieldLinks**](CdashigScenarioFieldLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_scenario_field import CdashigScenarioField

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigScenarioField from a JSON string
cdashig_scenario_field_instance = CdashigScenarioField.from_json(json)
# print the JSON string representation of the object
print(CdashigScenarioField.to_json())

# convert the object into a dict
cdashig_scenario_field_dict = cdashig_scenario_field_instance.to_dict()
# create an instance of CdashigScenarioField from a dict
cdashig_scenario_field_from_dict = CdashigScenarioField.from_dict(cdashig_scenario_field_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


