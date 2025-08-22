# AdamDatastructureLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**AdamDatastructureRef**](AdamDatastructureRef.md) |  | [optional] 
**parent_product** | [**AdamProductRef**](AdamProductRef.md) |  | [optional] 
**prior_version** | [**AdamDatastructureRef**](AdamDatastructureRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_datastructure_links import AdamDatastructureLinks

# TODO update the JSON string below
json = "{}"
# create an instance of AdamDatastructureLinks from a JSON string
adam_datastructure_links_instance = AdamDatastructureLinks.from_json(json)
# print the JSON string representation of the object
print(AdamDatastructureLinks.to_json())

# convert the object into a dict
adam_datastructure_links_dict = adam_datastructure_links_instance.to_dict()
# create an instance of AdamDatastructureLinks from a dict
adam_datastructure_links_from_dict = AdamDatastructureLinks.from_dict(adam_datastructure_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


