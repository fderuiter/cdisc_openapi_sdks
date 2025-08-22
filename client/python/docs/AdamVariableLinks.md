# AdamVariableLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**AdamVariableRef**](AdamVariableRef.md) |  | [optional] 
**codelist** | [**RootCtCodelistRef**](RootCtCodelistRef.md) |  | [optional] 
**parent_product** | [**AdamProductRef**](AdamProductRef.md) |  | [optional] 
**parent_datastructure** | [**AdamDatastructureRef**](AdamDatastructureRef.md) |  | [optional] 
**parent_variable_set** | [**AdamVarsetRef**](AdamVarsetRef.md) |  | [optional] 
**prior_version** | [**AdamVariableRef**](AdamVariableRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_variable_links import AdamVariableLinks

# TODO update the JSON string below
json = "{}"
# create an instance of AdamVariableLinks from a JSON string
adam_variable_links_instance = AdamVariableLinks.from_json(json)
# print the JSON string representation of the object
print(AdamVariableLinks.to_json())

# convert the object into a dict
adam_variable_links_dict = adam_variable_links_instance.to_dict()
# create an instance of AdamVariableLinks from a dict
adam_variable_links_from_dict = AdamVariableLinks.from_dict(adam_variable_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


