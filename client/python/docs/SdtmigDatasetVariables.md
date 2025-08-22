# SdtmigDatasetVariables


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**dataset_structure** | **str** |  | [optional] 
**links** | [**SdtmigDatasetVariablesLinks**](SdtmigDatasetVariablesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_dataset_variables import SdtmigDatasetVariables

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigDatasetVariables from a JSON string
sdtmig_dataset_variables_instance = SdtmigDatasetVariables.from_json(json)
# print the JSON string representation of the object
print(SdtmigDatasetVariables.to_json())

# convert the object into a dict
sdtmig_dataset_variables_dict = sdtmig_dataset_variables_instance.to_dict()
# create an instance of SdtmigDatasetVariables from a dict
sdtmig_dataset_variables_from_dict = SdtmigDatasetVariables.from_dict(sdtmig_dataset_variables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


