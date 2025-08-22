# SdtmClassLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**parent_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**subclasses** | [**List[SdtmClassRefSubclass]**](SdtmClassRefSubclass.md) |  | [optional] 
**prior_version** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_class_links import SdtmClassLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClassLinks from a JSON string
sdtm_class_links_instance = SdtmClassLinks.from_json(json)
# print the JSON string representation of the object
print SdtmClassLinks.to_json()

# convert the object into a dict
sdtm_class_links_dict = sdtm_class_links_instance.to_dict()
# create an instance of SdtmClassLinks from a dict
sdtm_class_links_from_dict = SdtmClassLinks.from_dict(sdtm_class_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


