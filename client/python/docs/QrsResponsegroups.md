# QrsResponsegroups


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
**links** | [**QrsResponsegroupsLinks**](QrsResponsegroupsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_responsegroups import QrsResponsegroups

# TODO update the JSON string below
json = "{}"
# create an instance of QrsResponsegroups from a JSON string
qrs_responsegroups_instance = QrsResponsegroups.from_json(json)
# print the JSON string representation of the object
print(QrsResponsegroups.to_json())

# convert the object into a dict
qrs_responsegroups_dict = qrs_responsegroups_instance.to_dict()
# create an instance of QrsResponsegroups from a dict
qrs_responsegroups_from_dict = QrsResponsegroups.from_dict(qrs_responsegroups_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


