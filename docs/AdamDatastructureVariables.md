# AdamDatastructureVariables


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 
**links** | [**AdamDatastructureVariablesLinks**](AdamDatastructureVariablesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_datastructure_variables import AdamDatastructureVariables

# TODO update the JSON string below
json = "{}"
# create an instance of AdamDatastructureVariables from a JSON string
adam_datastructure_variables_instance = AdamDatastructureVariables.from_json(json)
# print the JSON string representation of the object
print AdamDatastructureVariables.to_json()

# convert the object into a dict
adam_datastructure_variables_dict = adam_datastructure_variables_instance.to_dict()
# create an instance of AdamDatastructureVariables from a dict
adam_datastructure_variables_from_dict = AdamDatastructureVariables.from_dict(adam_datastructure_variables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


