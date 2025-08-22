# SdtmClassesLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmClassesRef**](SdtmClassesRef.md) |  | [optional] 
**prior_version** | [**SdtmClassesRef**](SdtmClassesRef.md) |  | [optional] 
**classes** | [**List[SdtmClassRefElement]**](SdtmClassRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_classes_links import SdtmClassesLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClassesLinks from a JSON string
sdtm_classes_links_instance = SdtmClassesLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmClassesLinks.to_json())

# convert the object into a dict
sdtm_classes_links_dict = sdtm_classes_links_instance.to_dict()
# create an instance of SdtmClassesLinks from a dict
sdtm_classes_links_from_dict = SdtmClassesLinks.from_dict(sdtm_classes_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


