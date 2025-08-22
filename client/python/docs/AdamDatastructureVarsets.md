# AdamDatastructureVarsets


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 
**links** | [**AdamDatastructureVarsetsLinks**](AdamDatastructureVarsetsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_datastructure_varsets import AdamDatastructureVarsets

# TODO update the JSON string below
json = "{}"
# create an instance of AdamDatastructureVarsets from a JSON string
adam_datastructure_varsets_instance = AdamDatastructureVarsets.from_json(json)
# print the JSON string representation of the object
print(AdamDatastructureVarsets.to_json())

# convert the object into a dict
adam_datastructure_varsets_dict = adam_datastructure_varsets_instance.to_dict()
# create an instance of AdamDatastructureVarsets from a dict
adam_datastructure_varsets_from_dict = AdamDatastructureVarsets.from_dict(adam_datastructure_varsets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


