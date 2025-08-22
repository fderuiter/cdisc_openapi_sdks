# SdtmDatasetLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] 
**parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**parent_class** | [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**prior_version** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_dataset_links import SdtmDatasetLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmDatasetLinks from a JSON string
sdtm_dataset_links_instance = SdtmDatasetLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmDatasetLinks.to_json())

# convert the object into a dict
sdtm_dataset_links_dict = sdtm_dataset_links_instance.to_dict()
# create an instance of SdtmDatasetLinks from a dict
sdtm_dataset_links_from_dict = SdtmDatasetLinks.from_dict(sdtm_dataset_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


