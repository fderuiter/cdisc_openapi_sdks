# SendigDatasetVariableLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SendigDatasetVariableRef**](SendigDatasetVariableRef.md) |  | [optional] 
**codelist** | [**List[RootCtCodelistRefElement]**](RootCtCodelistRefElement.md) |  | [optional] 
**model_class_variable** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] 
**model_dataset_variable** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] 
**parent_product** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] 
**parent_dataset** | [**SendigDatasetRef**](SendigDatasetRef.md) |  | [optional] 
**root_item** | [**RootSendigDatasetVariableRef**](RootSendigDatasetVariableRef.md) |  | [optional] 
**prior_version** | [**SendigDatasetVariableRef**](SendigDatasetVariableRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_dataset_variable_links import SendigDatasetVariableLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SendigDatasetVariableLinks from a JSON string
sendig_dataset_variable_links_instance = SendigDatasetVariableLinks.from_json(json)
# print the JSON string representation of the object
print SendigDatasetVariableLinks.to_json()

# convert the object into a dict
sendig_dataset_variable_links_dict = sendig_dataset_variable_links_instance.to_dict()
# create an instance of SendigDatasetVariableLinks from a dict
sendig_dataset_variable_links_from_dict = SendigDatasetVariableLinks.from_dict(sendig_dataset_variable_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


