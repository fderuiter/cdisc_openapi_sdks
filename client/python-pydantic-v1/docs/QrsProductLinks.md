# QrsProductLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**QrsProductRef**](QrsProductRef.md) |  | [optional] 
**prior_version** | [**QrsProductRef**](QrsProductRef.md) |  | [optional] 
**qrs_term_cat** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**qrs_items** | [**QrsItemsRef**](QrsItemsRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_product_links import QrsProductLinks

# TODO update the JSON string below
json = "{}"
# create an instance of QrsProductLinks from a JSON string
qrs_product_links_instance = QrsProductLinks.from_json(json)
# print the JSON string representation of the object
print QrsProductLinks.to_json()

# convert the object into a dict
qrs_product_links_dict = qrs_product_links_instance.to_dict()
# create an instance of QrsProductLinks from a dict
qrs_product_links_from_dict = QrsProductLinks.from_dict(qrs_product_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


