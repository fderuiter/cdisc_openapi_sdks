# SdtmDatasetVariables


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**dataset_structure** | **str** |  | [optional] 
**links** | [**SdtmDatasetVariablesLinks**](SdtmDatasetVariablesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_dataset_variables import SdtmDatasetVariables

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmDatasetVariables from a JSON string
sdtm_dataset_variables_instance = SdtmDatasetVariables.from_json(json)
# print the JSON string representation of the object
print(SdtmDatasetVariables.to_json())

# convert the object into a dict
sdtm_dataset_variables_dict = sdtm_dataset_variables_instance.to_dict()
# create an instance of SdtmDatasetVariables from a dict
sdtm_dataset_variables_from_dict = SdtmDatasetVariables.from_dict(sdtm_dataset_variables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


