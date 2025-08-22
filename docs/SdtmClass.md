# SdtmClass


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**SdtmClassLinks**](SdtmClassLinks.md) |  | [optional] 
**class_variables** | [**List[SdtmClassVariable]**](SdtmClassVariable.md) |  | [optional] 
**datasets** | [**List[SdtmDataset]**](SdtmDataset.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_class import SdtmClass

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClass from a JSON string
sdtm_class_instance = SdtmClass.from_json(json)
# print the JSON string representation of the object
print(SdtmClass.to_json())

# convert the object into a dict
sdtm_class_dict = sdtm_class_instance.to_dict()
# create an instance of SdtmClass from a dict
sdtm_class_from_dict = SdtmClass.from_dict(sdtm_class_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


