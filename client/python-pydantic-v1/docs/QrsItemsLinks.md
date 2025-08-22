# QrsItemsLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**QrsItemsRef**](QrsItemsRef.md) |  | [optional] 
**parent_product** | [**QrsProductRef**](QrsProductRef.md) |  | [optional] 
**items** | [**List[QrsItemRefElement]**](QrsItemRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_items_links import QrsItemsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of QrsItemsLinks from a JSON string
qrs_items_links_instance = QrsItemsLinks.from_json(json)
# print the JSON string representation of the object
print QrsItemsLinks.to_json()

# convert the object into a dict
qrs_items_links_dict = qrs_items_links_instance.to_dict()
# create an instance of QrsItemsLinks from a dict
qrs_items_links_from_dict = QrsItemsLinks.from_dict(qrs_items_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


