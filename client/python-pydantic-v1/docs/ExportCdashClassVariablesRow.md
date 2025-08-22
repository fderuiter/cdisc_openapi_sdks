# ExportCdashClassVariablesRow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 
**domain** | **str** |  | [optional] 
**variable_order** | **str** |  | [optional] 
**cdash_variable** | **str** |  | [optional] 
**cdash_variable_label** | **str** |  | [optional] 
**draft_cdash_definition** | **str** |  | [optional] 
**domain_specific** | **str** |  | [optional] 
**question_text** | **str** |  | [optional] 
**prompt** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**sdtm_target** | **List[str]** |  | [optional] 
**mapping_instructions** | **str** |  | [optional] 
**controlled_terminology_codelist_name** | **str** |  | [optional] 
**implementation_notes** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_cdash_class_variables_row import ExportCdashClassVariablesRow

# TODO update the JSON string below
json = "{}"
# create an instance of ExportCdashClassVariablesRow from a JSON string
export_cdash_class_variables_row_instance = ExportCdashClassVariablesRow.from_json(json)
# print the JSON string representation of the object
print ExportCdashClassVariablesRow.to_json()

# convert the object into a dict
export_cdash_class_variables_row_dict = export_cdash_class_variables_row_instance.to_dict()
# create an instance of ExportCdashClassVariablesRow from a dict
export_cdash_class_variables_row_from_dict = ExportCdashClassVariablesRow.from_dict(export_cdash_class_variables_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


