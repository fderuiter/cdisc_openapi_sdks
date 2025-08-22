# CtPackage


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**links** | [**CtPackageLinks**](CtPackageLinks.md) |  | [optional] 
**codelists** | [**List[CtPackageCodelists]**](CtPackageCodelists.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_package import CtPackage

# TODO update the JSON string below
json = "{}"
# create an instance of CtPackage from a JSON string
ct_package_instance = CtPackage.from_json(json)
# print the JSON string representation of the object
print CtPackage.to_json()

# convert the object into a dict
ct_package_dict = ct_package_instance.to_dict()
# create an instance of CtPackage from a dict
ct_package_from_dict = CtPackage.from_dict(ct_package_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


