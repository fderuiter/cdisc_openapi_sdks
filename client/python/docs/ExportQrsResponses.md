# ExportQrsResponses


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**response_group** | **str** |  | [optional] 
**sequence** | **str** |  | [optional] 
**responses_original_result_codelist_c_code** | **str** |  | [optional] 
**responses_original_result_term_c_code** | **str** |  | [optional] 
**responses_original_result_unit_codelist_c_code** | **str** |  | [optional] 
**responses_original_result_unit_term_c_code** | **str** |  | [optional] 
**responses_standardized_result_codelist_c_code** | **str** |  | [optional] 
**responses_standardized_result_term_c_code** | **str** |  | [optional] 
**responses_standardized_result_unit_codelist_c_code** | **str** |  | [optional] 
**responses_standardized_result_unit_term_c_code** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_qrs_responses import ExportQrsResponses

# TODO update the JSON string below
json = "{}"
# create an instance of ExportQrsResponses from a JSON string
export_qrs_responses_instance = ExportQrsResponses.from_json(json)
# print the JSON string representation of the object
print(ExportQrsResponses.to_json())

# convert the object into a dict
export_qrs_responses_dict = export_qrs_responses_instance.to_dict()
# create an instance of ExportQrsResponses from a dict
export_qrs_responses_from_dict = ExportQrsResponses.from_dict(export_qrs_responses_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


