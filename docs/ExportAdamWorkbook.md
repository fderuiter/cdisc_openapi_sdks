# ExportAdamWorkbook


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variables** | [**List[ExportAdamVariablesRow]**](ExportAdamVariablesRow.md) |  | [optional] 
**datastructures** | [**List[ExportAdamDatastructuresRow]**](ExportAdamDatastructuresRow.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_adam_workbook import ExportAdamWorkbook

# TODO update the JSON string below
json = "{}"
# create an instance of ExportAdamWorkbook from a JSON string
export_adam_workbook_instance = ExportAdamWorkbook.from_json(json)
# print the JSON string representation of the object
print ExportAdamWorkbook.to_json()

# convert the object into a dict
export_adam_workbook_dict = export_adam_workbook_instance.to_dict()
# create an instance of ExportAdamWorkbook from a dict
export_adam_workbook_from_dict = ExportAdamWorkbook.from_dict(export_adam_workbook_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


