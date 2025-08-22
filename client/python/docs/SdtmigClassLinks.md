# SdtmigClassLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] 
**model_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] 
**parent_class** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] 
**subclasses** | [**List[SdtmigClassRefSubclass]**](SdtmigClassRefSubclass.md) |  | [optional] 
**prior_version** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_class_links import SdtmigClassLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigClassLinks from a JSON string
sdtmig_class_links_instance = SdtmigClassLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmigClassLinks.to_json())

# convert the object into a dict
sdtmig_class_links_dict = sdtmig_class_links_instance.to_dict()
# create an instance of SdtmigClassLinks from a dict
sdtmig_class_links_from_dict = SdtmigClassLinks.from_dict(sdtmig_class_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


