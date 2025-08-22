# CdashigProductScenarios


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
**links** | [**CdashigProductScenariosLinks**](CdashigProductScenariosLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_product_scenarios import CdashigProductScenarios

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigProductScenarios from a JSON string
cdashig_product_scenarios_instance = CdashigProductScenarios.from_json(json)
# print the JSON string representation of the object
print(CdashigProductScenarios.to_json())

# convert the object into a dict
cdashig_product_scenarios_dict = cdashig_product_scenarios_instance.to_dict()
# create an instance of CdashigProductScenarios from a dict
cdashig_product_scenarios_from_dict = CdashigProductScenarios.from_dict(cdashig_product_scenarios_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


