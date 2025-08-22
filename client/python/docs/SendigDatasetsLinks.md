# SendigDatasetsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SendigDatasetsRef**](SendigDatasetsRef.md) |  | [optional] 
**parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] 
**datasets** | [**List[SendigDatasetRefElement]**](SendigDatasetRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_datasets_links import SendigDatasetsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SendigDatasetsLinks from a JSON string
sendig_datasets_links_instance = SendigDatasetsLinks.from_json(json)
# print the JSON string representation of the object
print(SendigDatasetsLinks.to_json())

# convert the object into a dict
sendig_datasets_links_dict = sendig_datasets_links_instance.to_dict()
# create an instance of SendigDatasetsLinks from a dict
sendig_datasets_links_from_dict = SendigDatasetsLinks.from_dict(sendig_datasets_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


