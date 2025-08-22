# SdtmDatasetVariablesLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmDatasetVariablesRef**](SdtmDatasetVariablesRef.md) |  | [optional] 
**parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**parent_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**prior_version** | [**SdtmDatasetVariablesRef**](SdtmDatasetVariablesRef.md) |  | [optional] 
**dataset_variables** | [**List[SdtmDatasetVariableRefElement]**](SdtmDatasetVariableRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_dataset_variables_links import SdtmDatasetVariablesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmDatasetVariablesLinks from a JSON string
sdtm_dataset_variables_links_instance = SdtmDatasetVariablesLinks.from_json(json)
# print the JSON string representation of the object
print SdtmDatasetVariablesLinks.to_json()

# convert the object into a dict
sdtm_dataset_variables_links_dict = sdtm_dataset_variables_links_instance.to_dict()
# create an instance of SdtmDatasetVariablesLinks from a dict
sdtm_dataset_variables_links_from_dict = SdtmDatasetVariablesLinks.from_dict(sdtm_dataset_variables_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


