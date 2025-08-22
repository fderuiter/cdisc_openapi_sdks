# CdashigScenario


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**domain** | **str** |  | [optional] 
**scenario** | **str** |  | [optional] 
**links** | [**CdashigScenarioLinks**](CdashigScenarioLinks.md) |  | [optional] 
**fields** | [**List[CdashigScenarioField]**](CdashigScenarioField.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_scenario import CdashigScenario

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigScenario from a JSON string
cdashig_scenario_instance = CdashigScenario.from_json(json)
# print the JSON string representation of the object
print CdashigScenario.to_json()

# convert the object into a dict
cdashig_scenario_dict = cdashig_scenario_instance.to_dict()
# create an instance of CdashigScenario from a dict
cdashig_scenario_from_dict = CdashigScenario.from_dict(cdashig_scenario_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


