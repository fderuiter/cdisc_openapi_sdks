# SendigDatasetVariablesLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SendigDatasetVariablesRef**](SendigDatasetVariablesRef.md) |  | [optional] 
**model_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] 
**parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] 
**parent_class** | [**SendigClassRef**](SendigClassRef.md) |  | [optional] 
**prior_version** | [**SendigDatasetVariablesRef**](SendigDatasetVariablesRef.md) |  | [optional] 
**dataset_variables** | [**List[SendigDatasetVariableRefElement]**](SendigDatasetVariableRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_dataset_variables_links import SendigDatasetVariablesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SendigDatasetVariablesLinks from a JSON string
sendig_dataset_variables_links_instance = SendigDatasetVariablesLinks.from_json(json)
# print the JSON string representation of the object
print(SendigDatasetVariablesLinks.to_json())

# convert the object into a dict
sendig_dataset_variables_links_dict = sendig_dataset_variables_links_instance.to_dict()
# create an instance of SendigDatasetVariablesLinks from a dict
sendig_dataset_variables_links_from_dict = SendigDatasetVariablesLinks.from_dict(sendig_dataset_variables_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


