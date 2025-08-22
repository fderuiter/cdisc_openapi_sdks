# ExportSdtmWorkbook


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_variables** | [**List[ExportSdtmClassVariablesRow]**](ExportSdtmClassVariablesRow.md) |  | [optional] 
**dataset_variables** | [**List[ExportSdtmDatasetVariablesRow]**](ExportSdtmDatasetVariablesRow.md) |  | [optional] 
**datasets** | [**List[ExportSdtmDatasetsRow]**](ExportSdtmDatasetsRow.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_sdtm_workbook import ExportSdtmWorkbook

# TODO update the JSON string below
json = "{}"
# create an instance of ExportSdtmWorkbook from a JSON string
export_sdtm_workbook_instance = ExportSdtmWorkbook.from_json(json)
# print the JSON string representation of the object
print ExportSdtmWorkbook.to_json()

# convert the object into a dict
export_sdtm_workbook_dict = export_sdtm_workbook_instance.to_dict()
# create an instance of ExportSdtmWorkbook from a dict
export_sdtm_workbook_from_dict = ExportSdtmWorkbook.from_dict(export_sdtm_workbook_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


