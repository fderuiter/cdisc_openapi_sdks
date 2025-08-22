# AdamDatastructureVariablesLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**AdamDatastructureVariablesRef**](AdamDatastructureVariablesRef.md) |  | [optional] 
**parent_product** | [**AdamProductRef**](AdamProductRef.md) |  | [optional] 
**prior_version** | [**AdamDatastructureVariablesRef**](AdamDatastructureVariablesRef.md) |  | [optional] 
**analysis_variables** | [**List[AdamVariableRefElement]**](AdamVariableRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_datastructure_variables_links import AdamDatastructureVariablesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of AdamDatastructureVariablesLinks from a JSON string
adam_datastructure_variables_links_instance = AdamDatastructureVariablesLinks.from_json(json)
# print the JSON string representation of the object
print AdamDatastructureVariablesLinks.to_json()

# convert the object into a dict
adam_datastructure_variables_links_dict = adam_datastructure_variables_links_instance.to_dict()
# create an instance of AdamDatastructureVariablesLinks from a dict
adam_datastructure_variables_links_from_dict = AdamDatastructureVariablesLinks.from_dict(adam_datastructure_variables_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


