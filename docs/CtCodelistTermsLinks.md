# CtCodelistTermsLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CtCodelistTermsRef**](CtCodelistTermsRef.md) |  | [optional] 
**parent_package** | [**CtPackageRef**](CtPackageRef.md) |  | [optional] 
**root_item** | [**RootCtCodelistRef**](RootCtCodelistRef.md) |  | [optional] 
**prior_version** | [**CtCodelistTermsRef**](CtCodelistTermsRef.md) |  | [optional] 
**terms** | [**List[CtTermRefElement]**](CtTermRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_codelist_terms_links import CtCodelistTermsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CtCodelistTermsLinks from a JSON string
ct_codelist_terms_links_instance = CtCodelistTermsLinks.from_json(json)
# print the JSON string representation of the object
print CtCodelistTermsLinks.to_json()

# convert the object into a dict
ct_codelist_terms_links_dict = ct_codelist_terms_links_instance.to_dict()
# create an instance of CtCodelistTermsLinks from a dict
ct_codelist_terms_links_from_dict = CtCodelistTermsLinks.from_dict(ct_codelist_terms_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


