# ExportSdtmigVariablesRow


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** |  | [optional] 
**variable_order** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 
**dataset_name** | **str** |  | [optional] 
**variable_name** | **str** |  | [optional] 
**variable_label** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**controlled_terms_codelist_or_format** | **str** |  | [optional] 
**role** | **str** |  | [optional] 
**cdisc_notes** | **str** |  | [optional] 
**core** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_sdtmig_variables_row import ExportSdtmigVariablesRow

# TODO update the JSON string below
json = "{}"
# create an instance of ExportSdtmigVariablesRow from a JSON string
export_sdtmig_variables_row_instance = ExportSdtmigVariablesRow.from_json(json)
# print the JSON string representation of the object
print(ExportSdtmigVariablesRow.to_json())

# convert the object into a dict
export_sdtmig_variables_row_dict = export_sdtmig_variables_row_instance.to_dict()
# create an instance of ExportSdtmigVariablesRow from a dict
export_sdtmig_variables_row_from_dict = ExportSdtmigVariablesRow.from_dict(export_sdtmig_variables_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


