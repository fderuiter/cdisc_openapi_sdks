# ExportSendigDatasetsRow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 
**dataset_name** | **str** |  | [optional] 
**dataset_label** | **str** |  | [optional] 
**structure** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.export_sendig_datasets_row import ExportSendigDatasetsRow

# TODO update the JSON string below
json = "{}"
# create an instance of ExportSendigDatasetsRow from a JSON string
export_sendig_datasets_row_instance = ExportSendigDatasetsRow.from_json(json)
# print the JSON string representation of the object
print ExportSendigDatasetsRow.to_json()

# convert the object into a dict
export_sendig_datasets_row_dict = export_sendig_datasets_row_instance.to_dict()
# create an instance of ExportSendigDatasetsRow from a dict
export_sendig_datasets_row_from_dict = ExportSendigDatasetsRow.from_dict(export_sendig_datasets_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


