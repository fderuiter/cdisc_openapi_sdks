# SdtmClassVariables


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**SdtmClassVariablesLinks**](SdtmClassVariablesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_class_variables import SdtmClassVariables

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClassVariables from a JSON string
sdtm_class_variables_instance = SdtmClassVariables.from_json(json)
# print the JSON string representation of the object
print SdtmClassVariables.to_json()

# convert the object into a dict
sdtm_class_variables_dict = sdtm_class_variables_instance.to_dict()
# create an instance of SdtmClassVariables from a dict
sdtm_class_variables_from_dict = SdtmClassVariables.from_dict(sdtm_class_variables_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


