# SendigDataset


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**dataset_structure** | **str** |  | [optional] 
**links** | [**SendigDatasetLinks**](SendigDatasetLinks.md) |  | [optional] 
**dataset_variables** | [**List[SendigDatasetVariable]**](SendigDatasetVariable.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_dataset import SendigDataset

# TODO update the JSON string below
json = "{}"
# create an instance of SendigDataset from a JSON string
sendig_dataset_instance = SendigDataset.from_json(json)
# print the JSON string representation of the object
print SendigDataset.to_json()

# convert the object into a dict
sendig_dataset_dict = sendig_dataset_instance.to_dict()
# create an instance of SendigDataset from a dict
sendig_dataset_from_dict = SendigDataset.from_dict(sendig_dataset_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


