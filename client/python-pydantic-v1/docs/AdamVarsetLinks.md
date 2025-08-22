# AdamVarsetLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**AdamVarsetRef**](AdamVarsetRef.md) |  | [optional] 
**parent_product** | [**AdamProductRef**](AdamProductRef.md) |  | [optional] 
**parent_datastructure** | [**AdamDatastructureRef**](AdamDatastructureRef.md) |  | [optional] 
**prior_version** | [**AdamVarsetRef**](AdamVarsetRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_varset_links import AdamVarsetLinks

# TODO update the JSON string below
json = "{}"
# create an instance of AdamVarsetLinks from a JSON string
adam_varset_links_instance = AdamVarsetLinks.from_json(json)
# print the JSON string representation of the object
print AdamVarsetLinks.to_json()

# convert the object into a dict
adam_varset_links_dict = adam_varset_links_instance.to_dict()
# create an instance of AdamVarsetLinks from a dict
adam_varset_links_from_dict = AdamVarsetLinks.from_dict(adam_varset_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


