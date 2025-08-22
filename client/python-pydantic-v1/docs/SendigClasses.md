# SendigClasses


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**links** | [**SendigClassesLinks**](SendigClassesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_classes import SendigClasses

# TODO update the JSON string below
json = "{}"
# create an instance of SendigClasses from a JSON string
sendig_classes_instance = SendigClasses.from_json(json)
# print the JSON string representation of the object
print SendigClasses.to_json()

# convert the object into a dict
sendig_classes_dict = sendig_classes_instance.to_dict()
# create an instance of SendigClasses from a dict
sendig_classes_from_dict = SendigClasses.from_dict(sendig_classes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


