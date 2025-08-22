# QrsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**question_text** | **str** |  | [optional] 
**links** | [**QrsItemLinks**](QrsItemLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_item import QrsItem

# TODO update the JSON string below
json = "{}"
# create an instance of QrsItem from a JSON string
qrs_item_instance = QrsItem.from_json(json)
# print the JSON string representation of the object
print(QrsItem.to_json())

# convert the object into a dict
qrs_item_dict = qrs_item_instance.to_dict()
# create an instance of QrsItem from a dict
qrs_item_from_dict = QrsItem.from_dict(qrs_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


