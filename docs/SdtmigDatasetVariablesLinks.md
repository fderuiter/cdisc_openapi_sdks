# SdtmigDatasetVariablesLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmigDatasetVariablesRef**](SdtmigDatasetVariablesRef.md) |  | [optional] 
**model_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] 
**parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] 
**parent_class** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] 
**prior_version** | [**SdtmigDatasetVariablesRef**](SdtmigDatasetVariablesRef.md) |  | [optional] 
**dataset_variables** | [**List[SdtmigDatasetVariableRefElement]**](SdtmigDatasetVariableRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_dataset_variables_links import SdtmigDatasetVariablesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigDatasetVariablesLinks from a JSON string
sdtmig_dataset_variables_links_instance = SdtmigDatasetVariablesLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmigDatasetVariablesLinks.to_json())

# convert the object into a dict
sdtmig_dataset_variables_links_dict = sdtmig_dataset_variables_links_instance.to_dict()
# create an instance of SdtmigDatasetVariablesLinks from a dict
sdtmig_dataset_variables_links_from_dict = SdtmigDatasetVariablesLinks.from_dict(sdtmig_dataset_variables_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


