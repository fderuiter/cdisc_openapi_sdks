# SdtmDatasetsLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmDatasetsRef**](SdtmDatasetsRef.md) |  | [optional] 
**parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**prior_version** | [**SdtmDatasetsRef**](SdtmDatasetsRef.md) |  | [optional] 
**datasets** | [**List[SdtmDatasetRefElement]**](SdtmDatasetRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_datasets_links import SdtmDatasetsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmDatasetsLinks from a JSON string
sdtm_datasets_links_instance = SdtmDatasetsLinks.from_json(json)
# print the JSON string representation of the object
print SdtmDatasetsLinks.to_json()

# convert the object into a dict
sdtm_datasets_links_dict = sdtm_datasets_links_instance.to_dict()
# create an instance of SdtmDatasetsLinks from a dict
sdtm_datasets_links_from_dict = SdtmDatasetsLinks.from_dict(sdtm_datasets_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


