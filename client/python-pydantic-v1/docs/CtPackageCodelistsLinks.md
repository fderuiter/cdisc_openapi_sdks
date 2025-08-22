# CtPackageCodelistsLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CtPackageCodelistsRef**](CtPackageCodelistsRef.md) |  | [optional] 
**prior_version** | [**CtPackageCodelistsRef**](CtPackageCodelistsRef.md) |  | [optional] 
**codelists** | [**List[CtCodelistRefElement]**](CtCodelistRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_package_codelists_links import CtPackageCodelistsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CtPackageCodelistsLinks from a JSON string
ct_package_codelists_links_instance = CtPackageCodelistsLinks.from_json(json)
# print the JSON string representation of the object
print CtPackageCodelistsLinks.to_json()

# convert the object into a dict
ct_package_codelists_links_dict = ct_package_codelists_links_instance.to_dict()
# create an instance of CtPackageCodelistsLinks from a dict
ct_package_codelists_links_from_dict = CtPackageCodelistsLinks.from_dict(ct_package_codelists_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


