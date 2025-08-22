# CtPackageLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CtPackageRef**](CtPackageRef.md) |  | [optional] 
**prior_version** | [**CtPackageRef**](CtPackageRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_package_links import CtPackageLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CtPackageLinks from a JSON string
ct_package_links_instance = CtPackageLinks.from_json(json)
# print the JSON string representation of the object
print(CtPackageLinks.to_json())

# convert the object into a dict
ct_package_links_dict = ct_package_links_instance.to_dict()
# create an instance of CtPackageLinks from a dict
ct_package_links_from_dict = CtPackageLinks.from_dict(ct_package_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


