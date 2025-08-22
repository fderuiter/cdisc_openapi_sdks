# SdtmigClass


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**SdtmigClassLinks**](SdtmigClassLinks.md) |  | [optional] 
**datasets** | [**List[SdtmigDataset]**](SdtmigDataset.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_class import SdtmigClass

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigClass from a JSON string
sdtmig_class_instance = SdtmigClass.from_json(json)
# print the JSON string representation of the object
print(SdtmigClass.to_json())

# convert the object into a dict
sdtmig_class_dict = sdtmig_class_instance.to_dict()
# create an instance of SdtmigClass from a dict
sdtmig_class_from_dict = SdtmigClass.from_dict(sdtmig_class_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


