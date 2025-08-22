# ExportAdamDatastructuresRow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** |  | [optional] 
**data_structure_name** | **str** |  | [optional] 
**dataset_name** | **str** |  | [optional] 
**dataset_label** | **str** |  | [optional] 
**dataset_description** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_adam_datastructures_row import ExportAdamDatastructuresRow

# TODO update the JSON string below
json = "{}"
# create an instance of ExportAdamDatastructuresRow from a JSON string
export_adam_datastructures_row_instance = ExportAdamDatastructuresRow.from_json(json)
# print the JSON string representation of the object
print ExportAdamDatastructuresRow.to_json()

# convert the object into a dict
export_adam_datastructures_row_dict = export_adam_datastructures_row_instance.to_dict()
# create an instance of ExportAdamDatastructuresRow from a dict
export_adam_datastructures_row_from_dict = ExportAdamDatastructuresRow.from_dict(export_adam_datastructures_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


