# ExportQrsCsvItemsRow


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qrs_measure_name** | **str** |  | [optional] 
**qrs_measure_label** | **str** |  | [optional] 
**qrs_measure_type** | **str** |  | [optional] 
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
from openapi_client.models.export_qrs_csv_items_row import ExportQrsCsvItemsRow

# TODO update the JSON string below
json = "{}"
# create an instance of ExportQrsCsvItemsRow from a JSON string
export_qrs_csv_items_row_instance = ExportQrsCsvItemsRow.from_json(json)
# print the JSON string representation of the object
print(ExportQrsCsvItemsRow.to_json())

# convert the object into a dict
export_qrs_csv_items_row_dict = export_qrs_csv_items_row_instance.to_dict()
# create an instance of ExportQrsCsvItemsRow from a dict
export_qrs_csv_items_row_from_dict = ExportQrsCsvItemsRow.from_dict(export_qrs_csv_items_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


