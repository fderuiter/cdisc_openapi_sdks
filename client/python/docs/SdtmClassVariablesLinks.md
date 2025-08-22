# SdtmClassVariablesLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmClassVariablesRef**](SdtmClassVariablesRef.md) |  | [optional] 
**parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**prior_version** | [**SdtmClassVariablesRef**](SdtmClassVariablesRef.md) |  | [optional] 
**class_variables** | [**List[SdtmClassVariableRefElement]**](SdtmClassVariableRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_class_variables_links import SdtmClassVariablesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClassVariablesLinks from a JSON string
sdtm_class_variables_links_instance = SdtmClassVariablesLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmClassVariablesLinks.to_json())

# convert the object into a dict
sdtm_class_variables_links_dict = sdtm_class_variables_links_instance.to_dict()
# create an instance of SdtmClassVariablesLinks from a dict
sdtm_class_variables_links_from_dict = SdtmClassVariablesLinks.from_dict(sdtm_class_variables_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


