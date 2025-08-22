# SdtmDatasetVariable


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**role** | **str** |  | [optional] 
**role_description** | **str** |  | [optional] 
**simple_datatype** | **str** |  | [optional] 
**described_value_domain** | **str** |  | [optional] 
**links** | [**SdtmDatasetVariableLinks**](SdtmDatasetVariableLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_dataset_variable import SdtmDatasetVariable

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmDatasetVariable from a JSON string
sdtm_dataset_variable_instance = SdtmDatasetVariable.from_json(json)
# print the JSON string representation of the object
print SdtmDatasetVariable.to_json()

# convert the object into a dict
sdtm_dataset_variable_dict = sdtm_dataset_variable_instance.to_dict()
# create an instance of SdtmDatasetVariable from a dict
sdtm_dataset_variable_from_dict = SdtmDatasetVariable.from_dict(sdtm_dataset_variable_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


