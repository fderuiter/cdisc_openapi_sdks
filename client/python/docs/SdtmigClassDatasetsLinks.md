# SdtmigClassDatasetsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SdtmigClassDatasetsRef**](SdtmigClassDatasetsRef.md) |  | [optional] 
**parent_product** | [**SdtmigProductRef**](SdtmigProductRef.md) |  | [optional] 
**prior_version** | [**SdtmigClassDatasetsRef**](SdtmigClassDatasetsRef.md) |  | [optional] 
**datasets** | [**List[SdtmigDatasetRefElement]**](SdtmigDatasetRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_class_datasets_links import SdtmigClassDatasetsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigClassDatasetsLinks from a JSON string
sdtmig_class_datasets_links_instance = SdtmigClassDatasetsLinks.from_json(json)
# print the JSON string representation of the object
print(SdtmigClassDatasetsLinks.to_json())

# convert the object into a dict
sdtmig_class_datasets_links_dict = sdtmig_class_datasets_links_instance.to_dict()
# create an instance of SdtmigClassDatasetsLinks from a dict
sdtmig_class_datasets_links_from_dict = SdtmigClassDatasetsLinks.from_dict(sdtmig_class_datasets_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


