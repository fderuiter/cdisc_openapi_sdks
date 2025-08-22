# CdashigScenarioFields


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**domain** | **str** |  | [optional] 
**scenario** | **str** |  | [optional] 
**links** | [**CdashigScenarioFieldsLinks**](CdashigScenarioFieldsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_scenario_fields import CdashigScenarioFields

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigScenarioFields from a JSON string
cdashig_scenario_fields_instance = CdashigScenarioFields.from_json(json)
# print the JSON string representation of the object
print CdashigScenarioFields.to_json()

# convert the object into a dict
cdashig_scenario_fields_dict = cdashig_scenario_fields_instance.to_dict()
# create an instance of CdashigScenarioFields from a dict
cdashig_scenario_fields_from_dict = CdashigScenarioFields.from_dict(cdashig_scenario_fields_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


