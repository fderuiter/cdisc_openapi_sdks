# ExportCdashTable


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_variables** | [**List[ExportCdashClassVariablesRow]**](ExportCdashClassVariablesRow.md) |  | [optional] 
**domain_variables** | [**List[ExportCdashDomainVariablesRow]**](ExportCdashDomainVariablesRow.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_cdash_table import ExportCdashTable

# TODO update the JSON string below
json = "{}"
# create an instance of ExportCdashTable from a JSON string
export_cdash_table_instance = ExportCdashTable.from_json(json)
# print the JSON string representation of the object
print ExportCdashTable.to_json()

# convert the object into a dict
export_cdash_table_dict = export_cdash_table_instance.to_dict()
# create an instance of ExportCdashTable from a dict
export_cdash_table_from_dict = ExportCdashTable.from_dict(export_cdash_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


