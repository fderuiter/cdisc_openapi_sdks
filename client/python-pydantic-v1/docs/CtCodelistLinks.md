# CtCodelistLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CtCodelistRef**](CtCodelistRef.md) |  | [optional] 
**parent_package** | [**CtPackageRef**](CtPackageRef.md) |  | [optional] 
**root_item** | [**RootCtCodelistRef**](RootCtCodelistRef.md) |  | [optional] 
**prior_version** | [**CtCodelistRef**](CtCodelistRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_codelist_links import CtCodelistLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CtCodelistLinks from a JSON string
ct_codelist_links_instance = CtCodelistLinks.from_json(json)
# print the JSON string representation of the object
print CtCodelistLinks.to_json()

# convert the object into a dict
ct_codelist_links_dict = ct_codelist_links_instance.to_dict()
# create an instance of CtCodelistLinks from a dict
ct_codelist_links_from_dict = CtCodelistLinks.from_dict(ct_codelist_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


