# CdashigScenarioFieldsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashigScenarioFieldsRef**](CdashigScenarioFieldsRef.md) |  | [optional] 
**parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**parent_class** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] 
**parent_domain** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] 
**fields** | [**List[CdashigScenarioFieldRefElement]**](CdashigScenarioFieldRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_scenario_fields_links import CdashigScenarioFieldsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigScenarioFieldsLinks from a JSON string
cdashig_scenario_fields_links_instance = CdashigScenarioFieldsLinks.from_json(json)
# print the JSON string representation of the object
print(CdashigScenarioFieldsLinks.to_json())

# convert the object into a dict
cdashig_scenario_fields_links_dict = cdashig_scenario_fields_links_instance.to_dict()
# create an instance of CdashigScenarioFieldsLinks from a dict
cdashig_scenario_fields_links_from_dict = CdashigScenarioFieldsLinks.from_dict(cdashig_scenario_fields_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


