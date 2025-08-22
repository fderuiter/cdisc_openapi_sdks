# SendigClass


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**SendigClassLinks**](SendigClassLinks.md) |  | [optional] 
**datasets** | [**List[SendigDataset]**](SendigDataset.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_class import SendigClass

# TODO update the JSON string below
json = "{}"
# create an instance of SendigClass from a JSON string
sendig_class_instance = SendigClass.from_json(json)
# print the JSON string representation of the object
print SendigClass.to_json()

# convert the object into a dict
sendig_class_dict = sendig_class_instance.to_dict()
# create an instance of SendigClass from a dict
sendig_class_from_dict = SendigClass.from_dict(sendig_class_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


