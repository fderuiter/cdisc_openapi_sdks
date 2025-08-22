# AdamDatastructure


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 
**links** | [**AdamDatastructureLinks**](AdamDatastructureLinks.md) |  | [optional] 
**analysis_variable_sets** | [**List[AdamVarset]**](AdamVarset.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_datastructure import AdamDatastructure

# TODO update the JSON string below
json = "{}"
# create an instance of AdamDatastructure from a JSON string
adam_datastructure_instance = AdamDatastructure.from_json(json)
# print the JSON string representation of the object
print(AdamDatastructure.to_json())

# convert the object into a dict
adam_datastructure_dict = adam_datastructure_instance.to_dict()
# create an instance of AdamDatastructure from a dict
adam_datastructure_from_dict = AdamDatastructure.from_dict(adam_datastructure_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


