# SendigClassDatasets


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**SendigClassDatasetsLinks**](SendigClassDatasetsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_class_datasets import SendigClassDatasets

# TODO update the JSON string below
json = "{}"
# create an instance of SendigClassDatasets from a JSON string
sendig_class_datasets_instance = SendigClassDatasets.from_json(json)
# print the JSON string representation of the object
print SendigClassDatasets.to_json()

# convert the object into a dict
sendig_class_datasets_dict = sendig_class_datasets_instance.to_dict()
# create an instance of SendigClassDatasets from a dict
sendig_class_datasets_from_dict = SendigClassDatasets.from_dict(sendig_class_datasets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


