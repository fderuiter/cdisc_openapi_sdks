# SendigDatasetVariable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**role** | **str** |  | [optional] 
**simple_datatype** | **str** |  | [optional] 
**core** | **str** |  | [optional] 
**described_value_domain** | **str** |  | [optional] 
**value_list** | **List[str]** |  | [optional] 
**links** | [**SendigDatasetVariableLinks**](SendigDatasetVariableLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_dataset_variable import SendigDatasetVariable

# TODO update the JSON string below
json = "{}"
# create an instance of SendigDatasetVariable from a JSON string
sendig_dataset_variable_instance = SendigDatasetVariable.from_json(json)
# print the JSON string representation of the object
print(SendigDatasetVariable.to_json())

# convert the object into a dict
sendig_dataset_variable_dict = sendig_dataset_variable_instance.to_dict()
# create an instance of SendigDatasetVariable from a dict
sendig_dataset_variable_from_dict = SendigDatasetVariable.from_dict(sendig_dataset_variable_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


