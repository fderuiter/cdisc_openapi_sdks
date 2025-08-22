# SendigDatasetLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] 
**model_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] 
**parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] 
**parent_class** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] 
**prior_version** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_dataset_links import SendigDatasetLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SendigDatasetLinks from a JSON string
sendig_dataset_links_instance = SendigDatasetLinks.from_json(json)
# print the JSON string representation of the object
print(SendigDatasetLinks.to_json())

# convert the object into a dict
sendig_dataset_links_dict = sendig_dataset_links_instance.to_dict()
# create an instance of SendigDatasetLinks from a dict
sendig_dataset_links_from_dict = SendigDatasetLinks.from_dict(sendig_dataset_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


