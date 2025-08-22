# ExportSendigWorkbook


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variables** | [**List[ExportSendigVariablesRow]**](ExportSendigVariablesRow.md) |  | [optional] 
**datasets** | [**List[ExportSendigDatasetsRow]**](ExportSendigDatasetsRow.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_sendig_workbook import ExportSendigWorkbook

# TODO update the JSON string below
json = "{}"
# create an instance of ExportSendigWorkbook from a JSON string
export_sendig_workbook_instance = ExportSendigWorkbook.from_json(json)
# print the JSON string representation of the object
print ExportSendigWorkbook.to_json()

# convert the object into a dict
export_sendig_workbook_dict = export_sendig_workbook_instance.to_dict()
# create an instance of ExportSendigWorkbook from a dict
export_sendig_workbook_from_dict = ExportSendigWorkbook.from_dict(export_sendig_workbook_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


