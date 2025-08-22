# QrsResponsegroupsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**QrsResponsegroupsRef**](QrsResponsegroupsRef.md) |  | [optional] 
**responsegroups** | [**List[QrsResponsegroupRefElement]**](QrsResponsegroupRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_responsegroups_links import QrsResponsegroupsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of QrsResponsegroupsLinks from a JSON string
qrs_responsegroups_links_instance = QrsResponsegroupsLinks.from_json(json)
# print the JSON string representation of the object
print(QrsResponsegroupsLinks.to_json())

# convert the object into a dict
qrs_responsegroups_links_dict = qrs_responsegroups_links_instance.to_dict()
# create an instance of QrsResponsegroupsLinks from a dict
qrs_responsegroups_links_from_dict = QrsResponsegroupsLinks.from_dict(qrs_responsegroups_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


