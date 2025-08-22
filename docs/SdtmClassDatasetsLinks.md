# SdtmClassDatasetsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmClassDatasetsRef**](SdtmClassDatasetsRef.md) |  | [optional] 
**parent_product** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**prior_version** | [**SdtmClassDatasetsRef**](SdtmClassDatasetsRef.md) |  | [optional] 
**datasets** | [**List[SdtmDatasetRefElement]**](SdtmDatasetRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_class_datasets_links import SdtmClassDatasetsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClassDatasetsLinks from a JSON string
sdtm_class_datasets_links_instance = SdtmClassDatasetsLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmClassDatasetsLinks.to_json())

# convert the object into a dict
sdtm_class_datasets_links_dict = sdtm_class_datasets_links_instance.to_dict()
# create an instance of SdtmClassDatasetsLinks from a dict
sdtm_class_datasets_links_from_dict = SdtmClassDatasetsLinks.from_dict(sdtm_class_datasets_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


