# SendigDatasets


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
**links** | [**SendigDatasetsLinks**](SendigDatasetsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_datasets import SendigDatasets

# TODO update the JSON string below
json = "{}"
# create an instance of SendigDatasets from a JSON string
sendig_datasets_instance = SendigDatasets.from_json(json)
# print the JSON string representation of the object
print SendigDatasets.to_json()

# convert the object into a dict
sendig_datasets_dict = sendig_datasets_instance.to_dict()
# create an instance of SendigDatasets from a dict
sendig_datasets_from_dict = SendigDatasets.from_dict(sendig_datasets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


