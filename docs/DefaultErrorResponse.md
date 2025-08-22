# DefaultErrorResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status_code** | **str** | HTTP Status Code | [optional] 
**reason_phrase** | **str** | HTTP Reason Phrase | [optional] 
**user_message** | **str** | User Error Message | [optional] 
**admin_message** | **str** | Admin Error Message | [optional] 

## Example

```python
from openapi_client.models.default_error_response import DefaultErrorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DefaultErrorResponse from a JSON string
default_error_response_instance = DefaultErrorResponse.from_json(json)
# print the JSON string representation of the object
print DefaultErrorResponse.to_json()

# convert the object into a dict
default_error_response_dict = default_error_response_instance.to_dict()
# create an instance of DefaultErrorResponse from a dict
default_error_response_from_dict = DefaultErrorResponse.from_dict(default_error_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


