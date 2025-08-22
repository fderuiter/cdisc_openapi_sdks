# AdamDatastructureVarsetsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**AdamDatastructureVarsetsRef**](AdamDatastructureVarsetsRef.md) |  | [optional] 
**parent_product** | [**AdamProductRef**](AdamProductRef.md) |  | [optional] 
**prior_version** | [**AdamDatastructureVarsetsRef**](AdamDatastructureVarsetsRef.md) |  | [optional] 
**analysis_variable_sets** | [**List[AdamVarsetRefElement]**](AdamVarsetRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_datastructure_varsets_links import AdamDatastructureVarsetsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of AdamDatastructureVarsetsLinks from a JSON string
adam_datastructure_varsets_links_instance = AdamDatastructureVarsetsLinks.from_json(json)
# print the JSON string representation of the object
print(AdamDatastructureVarsetsLinks.to_json())

# convert the object into a dict
adam_datastructure_varsets_links_dict = adam_datastructure_varsets_links_instance.to_dict()
# create an instance of AdamDatastructureVarsetsLinks from a dict
adam_datastructure_varsets_links_from_dict = AdamDatastructureVarsetsLinks.from_dict(adam_datastructure_varsets_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


