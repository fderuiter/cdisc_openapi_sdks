# ExportSdtmVariablesTable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_variables** | [**List[ExportSdtmClassVariablesRow]**](ExportSdtmClassVariablesRow.md) |  | [optional] 
**dataset_variables** | [**List[ExportSdtmDatasetVariablesRow]**](ExportSdtmDatasetVariablesRow.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_sdtm_variables_table import ExportSdtmVariablesTable

# TODO update the JSON string below
json = "{}"
# create an instance of ExportSdtmVariablesTable from a JSON string
export_sdtm_variables_table_instance = ExportSdtmVariablesTable.from_json(json)
# print the JSON string representation of the object
print(ExportSdtmVariablesTable.to_json())

# convert the object into a dict
export_sdtm_variables_table_dict = export_sdtm_variables_table_instance.to_dict()
# create an instance of ExportSdtmVariablesTable from a dict
export_sdtm_variables_table_from_dict = ExportSdtmVariablesTable.from_dict(export_sdtm_variables_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


