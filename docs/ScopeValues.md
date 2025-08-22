# ScopeValues


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **float** |  | [optional] 
**has_more** | **bool** |  | [optional] 
**values** | **List[str]** |  | [optional] 

## Example

```python
from openapi_client.models.scope_values import ScopeValues

# TODO update the JSON string below
json = "{}"
# create an instance of ScopeValues from a JSON string
scope_values_instance = ScopeValues.from_json(json)
# print the JSON string representation of the object
print ScopeValues.to_json()

# convert the object into a dict
scope_values_dict = scope_values_instance.to_dict()
# create an instance of ScopeValues from a dict
scope_values_from_dict = ScopeValues.from_dict(scope_values_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


