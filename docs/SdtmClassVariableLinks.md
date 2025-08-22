# SdtmClassVariableLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] 
**parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**parent_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**qualifies_variables** | [**List[SdtmClassVariableRefQualifies]**](SdtmClassVariableRefQualifies.md) |  | [optional] 
**root_item** | [**RootSdtmClassVariableRef**](RootSdtmClassVariableRef.md) |  | [optional] 
**prior_version** | [**SdtmClassVariableRef**](SdtmClassVariableRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_class_variable_links import SdtmClassVariableLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClassVariableLinks from a JSON string
sdtm_class_variable_links_instance = SdtmClassVariableLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmClassVariableLinks.to_json())

# convert the object into a dict
sdtm_class_variable_links_dict = sdtm_class_variable_links_instance.to_dict()
# create an instance of SdtmClassVariableLinks from a dict
sdtm_class_variable_links_from_dict = SdtmClassVariableLinks.from_dict(sdtm_class_variable_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


