# SdtmigClasses


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
**links** | [**SdtmigClassesLinks**](SdtmigClassesLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_classes import SdtmigClasses

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigClasses from a JSON string
sdtmig_classes_instance = SdtmigClasses.from_json(json)
# print the JSON string representation of the object
print(SdtmigClasses.to_json())

# convert the object into a dict
sdtmig_classes_dict = sdtmig_classes_instance.to_dict()
# create an instance of SdtmigClasses from a dict
sdtmig_classes_from_dict = SdtmigClasses.from_dict(sdtmig_classes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


