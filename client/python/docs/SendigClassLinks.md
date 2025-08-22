# SendigClassLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] 
**model_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] 
**parent_class** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] 
**subclasses** | [**List[SendigClassRefSubclass]**](SendigClassRefSubclass.md) |  | [optional] 
**prior_version** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_class_links import SendigClassLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SendigClassLinks from a JSON string
sendig_class_links_instance = SendigClassLinks.from_json(json)
# print the JSON string representation of the object
print(SendigClassLinks.to_json())

# convert the object into a dict
sendig_class_links_dict = sendig_class_links_instance.to_dict()
# create an instance of SendigClassLinks from a dict
sendig_class_links_from_dict = SendigClassLinks.from_dict(sendig_class_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


