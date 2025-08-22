# CtTermLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CtTermRef**](CtTermRef.md) |  | [optional] 
**parent_package** | [**CtPackageRef**](CtPackageRef.md) |  | [optional] 
**parent_codelist** | [**CtCodelistRef**](CtCodelistRef.md) |  | [optional] 
**root_item** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**prior_version** | [**CtTermRef**](CtTermRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_term_links import CtTermLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CtTermLinks from a JSON string
ct_term_links_instance = CtTermLinks.from_json(json)
# print the JSON string representation of the object
print CtTermLinks.to_json()

# convert the object into a dict
ct_term_links_dict = ct_term_links_instance.to_dict()
# create an instance of CtTermLinks from a dict
ct_term_links_from_dict = CtTermLinks.from_dict(ct_term_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


