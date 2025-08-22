# ExportSdtmigWorkbook


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variables** | [**List[ExportSdtmigVariablesRow]**](ExportSdtmigVariablesRow.md) |  | [optional] 
**datasets** | [**List[ExportSdtmigDatasetsRow]**](ExportSdtmigDatasetsRow.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_sdtmig_workbook import ExportSdtmigWorkbook

# TODO update the JSON string below
json = "{}"
# create an instance of ExportSdtmigWorkbook from a JSON string
export_sdtmig_workbook_instance = ExportSdtmigWorkbook.from_json(json)
# print the JSON string representation of the object
print(ExportSdtmigWorkbook.to_json())

# convert the object into a dict
export_sdtmig_workbook_dict = export_sdtmig_workbook_instance.to_dict()
# create an instance of ExportSdtmigWorkbook from a dict
export_sdtmig_workbook_from_dict = ExportSdtmigWorkbook.from_dict(export_sdtmig_workbook_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


