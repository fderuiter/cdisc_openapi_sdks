# CdashigScenarioFieldLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashigScenarioFieldRef**](CdashigScenarioFieldRef.md) |  | [optional] 
**codelist** | [**List[RootCtCodelistRefElement]**](RootCtCodelistRefElement.md) |  | [optional] 
**parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**parent_domain** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] 
**parent_scenario** | [**CdashigScenarioRef**](CdashigScenarioRef.md) |  | [optional] 
**root_item** | [**RootCdashigScenarioFieldRef**](RootCdashigScenarioFieldRef.md) |  | [optional] 
**prior_version** | [**CdashigScenarioFieldRef**](CdashigScenarioFieldRef.md) |  | [optional] 
**sdtmig_dataset_mapping_targets** | [**List[SdtmigDatasetVariableRefTarget]**](SdtmigDatasetVariableRefTarget.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_scenario_field_links import CdashigScenarioFieldLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigScenarioFieldLinks from a JSON string
cdashig_scenario_field_links_instance = CdashigScenarioFieldLinks.from_json(json)
# print the JSON string representation of the object
print CdashigScenarioFieldLinks.to_json()

# convert the object into a dict
cdashig_scenario_field_links_dict = cdashig_scenario_field_links_instance.to_dict()
# create an instance of CdashigScenarioFieldLinks from a dict
cdashig_scenario_field_links_from_dict = CdashigScenarioFieldLinks.from_dict(cdashig_scenario_field_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


