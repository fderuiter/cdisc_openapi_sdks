# ProductgroupTerminologyLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**ProductgroupRef**](ProductgroupRef.md) |  | [optional] 
**packages** | [**List[CtPackageRefElement]**](CtPackageRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.productgroup_terminology_links import ProductgroupTerminologyLinks

# TODO update the JSON string below
json = "{}"
# create an instance of ProductgroupTerminologyLinks from a JSON string
productgroup_terminology_links_instance = ProductgroupTerminologyLinks.from_json(json)
# print the JSON string representation of the object
print(ProductgroupTerminologyLinks.to_json())

# convert the object into a dict
productgroup_terminology_links_dict = productgroup_terminology_links_instance.to_dict()
# create an instance of ProductgroupTerminologyLinks from a dict
productgroup_terminology_links_from_dict = ProductgroupTerminologyLinks.from_dict(productgroup_terminology_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


