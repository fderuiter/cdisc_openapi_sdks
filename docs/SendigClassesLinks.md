# SendigClassesLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SendigClassesRef**](SendigClassesRef.md) |  | [optional] 
**prior_version** | [**SendigClassesRef**](SendigClassesRef.md) |  | [optional] 
**classes** | [**List[SendigClassRefElement]**](SendigClassRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_classes_links import SendigClassesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SendigClassesLinks from a JSON string
sendig_classes_links_instance = SendigClassesLinks.from_json(json)
# print the JSON string representation of the object
print SendigClassesLinks.to_json()

# convert the object into a dict
sendig_classes_links_dict = sendig_classes_links_instance.to_dict()
# create an instance of SendigClassesLinks from a dict
sendig_classes_links_from_dict = SendigClassesLinks.from_dict(sendig_classes_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


