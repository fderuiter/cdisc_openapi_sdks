# ProductgroupDataCollectionLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**ProductgroupRef**](ProductgroupRef.md) |  | [optional] 
**cdash** | [**List[CdashProductRefElement]**](CdashProductRefElement.md) |  | [optional] 
**cdashig** | [**List[CdashigProductRefElement]**](CdashigProductRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.productgroup_data_collection_links import ProductgroupDataCollectionLinks

# TODO update the JSON string below
json = "{}"
# create an instance of ProductgroupDataCollectionLinks from a JSON string
productgroup_data_collection_links_instance = ProductgroupDataCollectionLinks.from_json(json)
# print the JSON string representation of the object
print ProductgroupDataCollectionLinks.to_json()

# convert the object into a dict
productgroup_data_collection_links_dict = productgroup_data_collection_links_instance.to_dict()
# create an instance of ProductgroupDataCollectionLinks from a dict
productgroup_data_collection_links_from_dict = ProductgroupDataCollectionLinks.from_dict(productgroup_data_collection_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


