# QrsItemLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qrs_item_test** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**qrs_item_testcd** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**qrs_item_eval** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**qrs_item_scat** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**responsegroup** | [**QrsResponsegroup**](QrsResponsegroup.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_item_links import QrsItemLinks

# TODO update the JSON string below
json = "{}"
# create an instance of QrsItemLinks from a JSON string
qrs_item_links_instance = QrsItemLinks.from_json(json)
# print the JSON string representation of the object
print QrsItemLinks.to_json()

# convert the object into a dict
qrs_item_links_dict = qrs_item_links_instance.to_dict()
# create an instance of QrsItemLinks from a dict
qrs_item_links_from_dict = QrsItemLinks.from_dict(qrs_item_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


