# ExportAdamVariablesRow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** |  | [optional] 
**data_structure_name** | **str** |  | [optional] 
**dataset_name** | **str** |  | [optional] 
**variable_group** | **str** |  | [optional] 
**variable_name** | **str** |  | [optional] 
**variable_label** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**codelist_controlled_terms** | **str** |  | [optional] 
**core** | **str** |  | [optional] 
**cdisc_notes** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_adam_variables_row import ExportAdamVariablesRow

# TODO update the JSON string below
json = "{}"
# create an instance of ExportAdamVariablesRow from a JSON string
export_adam_variables_row_instance = ExportAdamVariablesRow.from_json(json)
# print the JSON string representation of the object
print ExportAdamVariablesRow.to_json()

# convert the object into a dict
export_adam_variables_row_dict = export_adam_variables_row_instance.to_dict()
# create an instance of ExportAdamVariablesRow from a dict
export_adam_variables_row_from_dict = ExportAdamVariablesRow.from_dict(export_adam_variables_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


