# SendigDatasetVariables


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**dataset_structure** | **str** |  | [optional] 
**links** | [**SendigDatasetVariablesLinks**](SendigDatasetVariablesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_dataset_variables import SendigDatasetVariables

# TODO update the JSON string below
json = "{}"
# create an instance of SendigDatasetVariables from a JSON string
sendig_dataset_variables_instance = SendigDatasetVariables.from_json(json)
# print the JSON string representation of the object
print(SendigDatasetVariables.to_json())

# convert the object into a dict
sendig_dataset_variables_dict = sendig_dataset_variables_instance.to_dict()
# create an instance of SendigDatasetVariables from a dict
sendig_dataset_variables_from_dict = SendigDatasetVariables.from_dict(sendig_dataset_variables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


