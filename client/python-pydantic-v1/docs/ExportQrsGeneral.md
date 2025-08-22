# ExportQrsGeneral


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**categorys_codelist_c_code** | **str** |  | [optional] 
**categorys_term_c_code** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_qrs_general import ExportQrsGeneral

# TODO update the JSON string below
json = "{}"
# create an instance of ExportQrsGeneral from a JSON string
export_qrs_general_instance = ExportQrsGeneral.from_json(json)
# print the JSON string representation of the object
print ExportQrsGeneral.to_json()

# convert the object into a dict
export_qrs_general_dict = export_qrs_general_instance.to_dict()
# create an instance of ExportQrsGeneral from a dict
export_qrs_general_from_dict = ExportQrsGeneral.from_dict(export_qrs_general_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


