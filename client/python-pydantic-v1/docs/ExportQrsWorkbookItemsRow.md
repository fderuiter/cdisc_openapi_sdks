# ExportQrsWorkbookItemsRow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_sequence** | **str** |  | [optional] 
**test_name** | **str** |  | [optional] 
**item_text** | **str** |  | [optional] 
**tests_codelist_c_code** | **str** |  | [optional] 
**tests_term_c_code** | **str** |  | [optional] 
**test_codes_codelist_c_code** | **str** |  | [optional] 
**test_codes_term_c_code** | **str** |  | [optional] 
**subcategorys_codelist_c_code** | **str** |  | [optional] 
**subcategorys_term_c_code** | **str** |  | [optional] 
**evaluators_codelist_c_code** | **str** |  | [optional] 
**evaluators_term_c_code** | **str** |  | [optional] 
**free_form_responses_datatype** | **str** |  | [optional] 
**response_group** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_qrs_workbook_items_row import ExportQrsWorkbookItemsRow

# TODO update the JSON string below
json = "{}"
# create an instance of ExportQrsWorkbookItemsRow from a JSON string
export_qrs_workbook_items_row_instance = ExportQrsWorkbookItemsRow.from_json(json)
# print the JSON string representation of the object
print ExportQrsWorkbookItemsRow.to_json()

# convert the object into a dict
export_qrs_workbook_items_row_dict = export_qrs_workbook_items_row_instance.to_dict()
# create an instance of ExportQrsWorkbookItemsRow from a dict
export_qrs_workbook_items_row_from_dict = ExportQrsWorkbookItemsRow.from_dict(export_qrs_workbook_items_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


