# About


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**AboutLinks**](AboutLinks.md) |  | [optional] 
**release_notes** | **str** |  | [optional] 
**api_documentation** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.about import About

# TODO update the JSON string below
json = "{}"
# create an instance of About from a JSON string
about_instance = About.from_json(json)
# print the JSON string representation of the object
print About.to_json()

# convert the object into a dict
about_dict = about_instance.to_dict()
# create an instance of About from a dict
about_from_dict = About.from_dict(about_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


