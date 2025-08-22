# ProductgroupQrsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**ProductgroupRef**](ProductgroupRef.md) |  | [optional] 
**qrs** | [**List[QrsRefElement]**](QrsRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.productgroup_qrs_links import ProductgroupQrsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of ProductgroupQrsLinks from a JSON string
productgroup_qrs_links_instance = ProductgroupQrsLinks.from_json(json)
# print the JSON string representation of the object
print(ProductgroupQrsLinks.to_json())

# convert the object into a dict
productgroup_qrs_links_dict = productgroup_qrs_links_instance.to_dict()
# create an instance of ProductgroupQrsLinks from a dict
productgroup_qrs_links_from_dict = ProductgroupQrsLinks.from_dict(productgroup_qrs_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


