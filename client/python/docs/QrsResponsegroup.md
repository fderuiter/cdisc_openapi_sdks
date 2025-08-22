# QrsResponsegroup


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** |  | [optional] 
**links** | [**QrsResponsegroupLinks**](QrsResponsegroupLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_responsegroup import QrsResponsegroup

# TODO update the JSON string below
json = "{}"
# create an instance of QrsResponsegroup from a JSON string
qrs_responsegroup_instance = QrsResponsegroup.from_json(json)
# print the JSON string representation of the object
print(QrsResponsegroup.to_json())

# convert the object into a dict
qrs_responsegroup_dict = qrs_responsegroup_instance.to_dict()
# create an instance of QrsResponsegroup from a dict
qrs_responsegroup_from_dict = QrsResponsegroup.from_dict(qrs_responsegroup_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


