# QrsResponseLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qrs_response_orres** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**qrs_response_orresu** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**qrs_response_stresc** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 
**qrs_response_strescu** | [**RootCtTermRef**](RootCtTermRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_response_links import QrsResponseLinks

# TODO update the JSON string below
json = "{}"
# create an instance of QrsResponseLinks from a JSON string
qrs_response_links_instance = QrsResponseLinks.from_json(json)
# print the JSON string representation of the object
print(QrsResponseLinks.to_json())

# convert the object into a dict
qrs_response_links_dict = qrs_response_links_instance.to_dict()
# create an instance of QrsResponseLinks from a dict
qrs_response_links_from_dict = QrsResponseLinks.from_dict(qrs_response_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


