# QrsItems


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**until_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**qrs_type** | **str** |  | [optional] 
**links** | [**QrsItemsLinks**](QrsItemsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_items import QrsItems

# TODO update the JSON string below
json = "{}"
# create an instance of QrsItems from a JSON string
qrs_items_instance = QrsItems.from_json(json)
# print the JSON string representation of the object
print QrsItems.to_json()

# convert the object into a dict
qrs_items_dict = qrs_items_instance.to_dict()
# create an instance of QrsItems from a dict
qrs_items_from_dict = QrsItems.from_dict(qrs_items_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


