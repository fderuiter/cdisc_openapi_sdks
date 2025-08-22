# SdtmigDatasetLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmigDatasetRef**](SdtmigDatasetRef.md) |  | [optional] 
**model_dataset** | [**SdtmDatasetRef**](SdtmDatasetRef.md) |  | [optional] 
**parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] 
**parent_class** | [**SdtmigClassRef**](SdtmigClassRef.md) |  | [optional] 
**prior_version** | [**SdtmigDatasetRef**](SdtmigDatasetRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_dataset_links import SdtmigDatasetLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigDatasetLinks from a JSON string
sdtmig_dataset_links_instance = SdtmigDatasetLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmigDatasetLinks.to_json())

# convert the object into a dict
sdtmig_dataset_links_dict = sdtmig_dataset_links_instance.to_dict()
# create an instance of SdtmigDatasetLinks from a dict
sdtmig_dataset_links_from_dict = SdtmigDatasetLinks.from_dict(sdtmig_dataset_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


