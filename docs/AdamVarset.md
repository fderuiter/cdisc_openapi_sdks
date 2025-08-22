# AdamVarset


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**AdamVarsetLinks**](AdamVarsetLinks.md) |  | [optional] 
**analysis_variables** | [**List[AdamVariable]**](AdamVariable.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_varset import AdamVarset

# TODO update the JSON string below
json = "{}"
# create an instance of AdamVarset from a JSON string
adam_varset_instance = AdamVarset.from_json(json)
# print the JSON string representation of the object
print(AdamVarset.to_json())

# convert the object into a dict
adam_varset_dict = adam_varset_instance.to_dict()
# create an instance of AdamVarset from a dict
adam_varset_from_dict = AdamVarset.from_dict(adam_varset_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


