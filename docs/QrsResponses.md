# QrsResponses


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**links** | [**QrsResponseLinks**](QrsResponseLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_responses import QrsResponses

# TODO update the JSON string below
json = "{}"
# create an instance of QrsResponses from a JSON string
qrs_responses_instance = QrsResponses.from_json(json)
# print the JSON string representation of the object
print QrsResponses.to_json()

# convert the object into a dict
qrs_responses_dict = qrs_responses_instance.to_dict()
# create an instance of QrsResponses from a dict
qrs_responses_from_dict = QrsResponses.from_dict(qrs_responses_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


