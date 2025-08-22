# SdtmigDatasetVariableLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmigDatasetVariableRef**](SdtmigDatasetVariableRef.md) |  | [optional] 
**codelist** | [**List[RootCtCodelistRefElement]**](RootCtCodelistRefElement.md) |  | [optional] 
**model_class_variable** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] 
**model_dataset_variable** | [**SdtmDatasetVariableRef**](SdtmDatasetVariableRef.md) |  | [optional] 
**parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] 
**parent_dataset** | [**SdtmigDatasetRef**](SdtmigDatasetRef.md) |  | [optional] 
**root_item** | [**RootSdtmigDatasetVariableRef**](RootSdtmigDatasetVariableRef.md) |  | [optional] 
**prior_version** | [**SdtmigDatasetVariableRef**](SdtmigDatasetVariableRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_dataset_variable_links import SdtmigDatasetVariableLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigDatasetVariableLinks from a JSON string
sdtmig_dataset_variable_links_instance = SdtmigDatasetVariableLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmigDatasetVariableLinks.to_json())

# convert the object into a dict
sdtmig_dataset_variable_links_dict = sdtmig_dataset_variable_links_instance.to_dict()
# create an instance of SdtmigDatasetVariableLinks from a dict
sdtmig_dataset_variable_links_from_dict = SdtmigDatasetVariableLinks.from_dict(sdtmig_dataset_variable_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


