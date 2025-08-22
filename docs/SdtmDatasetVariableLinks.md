# SdtmDatasetVariableLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] 
**parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**parent_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] 
**root_item** | [**RootSdtmDatasetVariableRef**](RootSdtmDatasetVariableRef.md) |  | [optional] 
**prior_version** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_dataset_variable_links import SdtmDatasetVariableLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmDatasetVariableLinks from a JSON string
sdtm_dataset_variable_links_instance = SdtmDatasetVariableLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmDatasetVariableLinks.to_json())

# convert the object into a dict
sdtm_dataset_variable_links_dict = sdtm_dataset_variable_links_instance.to_dict()
# create an instance of SdtmDatasetVariableLinks from a dict
sdtm_dataset_variable_links_from_dict = SdtmDatasetVariableLinks.from_dict(sdtm_dataset_variable_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


