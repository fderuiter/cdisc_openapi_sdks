# ExportCdashigTable


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_variables** | [**List[ExportCdashigDomainVariablesRow]**](ExportCdashigDomainVariablesRow.md) |  | [optional] 
**scenario_variables** | [**List[ExportCdashigScenarioVariablesRow]**](ExportCdashigScenarioVariablesRow.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_cdashig_table import ExportCdashigTable

# TODO update the JSON string below
json = "{}"
# create an instance of ExportCdashigTable from a JSON string
export_cdashig_table_instance = ExportCdashigTable.from_json(json)
# print the JSON string representation of the object
print ExportCdashigTable.to_json()

# convert the object into a dict
export_cdashig_table_dict = export_cdashig_table_instance.to_dict()
# create an instance of ExportCdashigTable from a dict
export_cdashig_table_from_dict = ExportCdashigTable.from_dict(export_cdashig_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


