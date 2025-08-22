# QrsResponsegroupLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**QrsResponsegroupRef**](QrsResponsegroupRef.md) |  | [optional] 
**responses** | [**List[QrsResponses]**](QrsResponses.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_responsegroup_links import QrsResponsegroupLinks

# TODO update the JSON string below
json = "{}"
# create an instance of QrsResponsegroupLinks from a JSON string
qrs_responsegroup_links_instance = QrsResponsegroupLinks.from_json(json)
# print the JSON string representation of the object
print QrsResponsegroupLinks.to_json()

# convert the object into a dict
qrs_responsegroup_links_dict = qrs_responsegroup_links_instance.to_dict()
# create an instance of QrsResponsegroupLinks from a dict
qrs_responsegroup_links_from_dict = QrsResponsegroupLinks.from_dict(qrs_responsegroup_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


