# MdrSearchScopesGet200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scopes** | [**List[DefaultSearchScopes]**](DefaultSearchScopes.md) |  | [optional] 

## Example

```python
from openapi_client.models.mdr_search_scopes_get200_response import MdrSearchScopesGet200Response

# TODO update the JSON string below
json = "{}"
# create an instance of MdrSearchScopesGet200Response from a JSON string
mdr_search_scopes_get200_response_instance = MdrSearchScopesGet200Response.from_json(json)
# print the JSON string representation of the object
print MdrSearchScopesGet200Response.to_json()

# convert the object into a dict
mdr_search_scopes_get200_response_dict = mdr_search_scopes_get200_response_instance.to_dict()
# create an instance of MdrSearchScopesGet200Response from a dict
mdr_search_scopes_get200_response_from_dict = MdrSearchScopesGet200Response.from_dict(mdr_search_scopes_get200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


