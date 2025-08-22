# SdtmigDatasetsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmigDatasetsRef**](SdtmigDatasetsRef.md) |  | [optional] 
**parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] 
**prior_version** | [**SdtmigDatasetsRef**](SdtmigDatasetsRef.md) |  | [optional] 
**datasets** | [**List[SdtmigDatasetRefElement]**](SdtmigDatasetRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_datasets_links import SdtmigDatasetsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigDatasetsLinks from a JSON string
sdtmig_datasets_links_instance = SdtmigDatasetsLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmigDatasetsLinks.to_json())

# convert the object into a dict
sdtmig_datasets_links_dict = sdtmig_datasets_links_instance.to_dict()
# create an instance of SdtmigDatasetsLinks from a dict
sdtmig_datasets_links_from_dict = SdtmigDatasetsLinks.from_dict(sdtmig_datasets_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


