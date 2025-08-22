# CdashigScenarioLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashigScenarioRef**](CdashigScenarioRef.md) |  | [optional] 
**parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**parent_class** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] 
**parent_domain** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] 
**prior_version** | [**CdashigScenarioRef**](CdashigScenarioRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_scenario_links import CdashigScenarioLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigScenarioLinks from a JSON string
cdashig_scenario_links_instance = CdashigScenarioLinks.from_json(json)
# print the JSON string representation of the object
print CdashigScenarioLinks.to_json()

# convert the object into a dict
cdashig_scenario_links_dict = cdashig_scenario_links_instance.to_dict()
# create an instance of CdashigScenarioLinks from a dict
cdashig_scenario_links_from_dict = CdashigScenarioLinks.from_dict(cdashig_scenario_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


