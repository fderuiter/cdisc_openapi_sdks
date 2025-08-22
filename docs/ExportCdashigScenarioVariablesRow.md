# ExportCdashigScenarioVariablesRow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 
**domain** | **str** |  | [optional] 
**data_collection_scenario** | **str** |  | [optional] 
**variable_order** | **str** |  | [optional] 
**cdashig_variable** | **str** |  | [optional] 
**cdashig_variable_label** | **str** |  | [optional] 
**draft_cdashig_definition** | **str** |  | [optional] 
**question_text** | **str** |  | [optional] 
**prompt** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**cdashig_core** | **str** |  | [optional] 
**case_report_form_completion_instructions** | **str** |  | [optional] 
**sdtmig_target** | **List[str]** |  | [optional] 
**mapping_instructions** | **str** |  | [optional] 
**controlled_terminology_codelist_name** | **str** |  | [optional] 
**implementation_notes** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_cdashig_scenario_variables_row import ExportCdashigScenarioVariablesRow

# TODO update the JSON string below
json = "{}"
# create an instance of ExportCdashigScenarioVariablesRow from a JSON string
export_cdashig_scenario_variables_row_instance = ExportCdashigScenarioVariablesRow.from_json(json)
# print the JSON string representation of the object
print ExportCdashigScenarioVariablesRow.to_json()

# convert the object into a dict
export_cdashig_scenario_variables_row_dict = export_cdashig_scenario_variables_row_instance.to_dict()
# create an instance of ExportCdashigScenarioVariablesRow from a dict
export_cdashig_scenario_variables_row_from_dict = ExportCdashigScenarioVariablesRow.from_dict(export_cdashig_scenario_variables_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


