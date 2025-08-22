# SdtmigDatasetVariable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**role** | **str** |  | [optional] 
**simple_datatype** | **str** |  | [optional] 
**core** | **str** |  | [optional] 
**described_value_domain** | **str** |  | [optional] 
**value_list** | **List[str]** |  | [optional] 
**links** | [**SdtmigDatasetVariableLinks**](SdtmigDatasetVariableLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_dataset_variable import SdtmigDatasetVariable

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigDatasetVariable from a JSON string
sdtmig_dataset_variable_instance = SdtmigDatasetVariable.from_json(json)
# print the JSON string representation of the object
print(SdtmigDatasetVariable.to_json())

# convert the object into a dict
sdtmig_dataset_variable_dict = sdtmig_dataset_variable_instance.to_dict()
# create an instance of SdtmigDatasetVariable from a dict
sdtmig_dataset_variable_from_dict = SdtmigDatasetVariable.from_dict(sdtmig_dataset_variable_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


