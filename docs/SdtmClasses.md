# SdtmClasses


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**links** | [**SdtmClassesLinks**](SdtmClassesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_classes import SdtmClasses

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClasses from a JSON string
sdtm_classes_instance = SdtmClasses.from_json(json)
# print the JSON string representation of the object
print SdtmClasses.to_json()

# convert the object into a dict
sdtm_classes_dict = sdtm_classes_instance.to_dict()
# create an instance of SdtmClasses from a dict
sdtm_classes_from_dict = SdtmClasses.from_dict(sdtm_classes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


