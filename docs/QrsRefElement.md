# QrsRefElement


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**href** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**type** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.qrs_ref_element import QrsRefElement

# TODO update the JSON string below
json = "{}"
# create an instance of QrsRefElement from a JSON string
qrs_ref_element_instance = QrsRefElement.from_json(json)
# print the JSON string representation of the object
print QrsRefElement.to_json()

# convert the object into a dict
qrs_ref_element_dict = qrs_ref_element_instance.to_dict()
# create an instance of QrsRefElement from a dict
qrs_ref_element_from_dict = QrsRefElement.from_dict(qrs_ref_element_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


