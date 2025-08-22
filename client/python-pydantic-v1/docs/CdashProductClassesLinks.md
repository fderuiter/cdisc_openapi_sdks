# CdashProductClassesLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashProductClassesRef**](CdashProductClassesRef.md) |  | [optional] 
**parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**classes** | [**List[CdashClassRefElement]**](CdashClassRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_product_classes_links import CdashProductClassesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashProductClassesLinks from a JSON string
cdash_product_classes_links_instance = CdashProductClassesLinks.from_json(json)
# print the JSON string representation of the object
print CdashProductClassesLinks.to_json()

# convert the object into a dict
cdash_product_classes_links_dict = cdash_product_classes_links_instance.to_dict()
# create an instance of CdashProductClassesLinks from a dict
cdash_product_classes_links_from_dict = CdashProductClassesLinks.from_dict(cdash_product_classes_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


