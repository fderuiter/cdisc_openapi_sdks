# ExportQrsWorkbook


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**ExportQrsGeneral**](ExportQrsGeneral.md) |  | [optional] 
**items** | [**List[ExportQrsWorkbookItemsRow]**](ExportQrsWorkbookItemsRow.md) |  | [optional] 
**responses** | [**List[ExportQrsResponses]**](ExportQrsResponses.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_qrs_workbook import ExportQrsWorkbook

# TODO update the JSON string below
json = "{}"
# create an instance of ExportQrsWorkbook from a JSON string
export_qrs_workbook_instance = ExportQrsWorkbook.from_json(json)
# print the JSON string representation of the object
print(ExportQrsWorkbook.to_json())

# convert the object into a dict
export_qrs_workbook_dict = export_qrs_workbook_instance.to_dict()
# create an instance of ExportQrsWorkbook from a dict
export_qrs_workbook_from_dict = ExportQrsWorkbook.from_dict(export_qrs_workbook_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


