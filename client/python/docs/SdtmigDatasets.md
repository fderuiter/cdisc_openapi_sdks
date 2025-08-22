# SdtmigDatasets


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**links** | [**SdtmigDatasetsLinks**](SdtmigDatasetsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_datasets import SdtmigDatasets

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigDatasets from a JSON string
sdtmig_datasets_instance = SdtmigDatasets.from_json(json)
# print the JSON string representation of the object
print(SdtmigDatasets.to_json())

# convert the object into a dict
sdtmig_datasets_dict = sdtmig_datasets_instance.to_dict()
# create an instance of SdtmigDatasets from a dict
sdtmig_datasets_from_dict = SdtmigDatasets.from_dict(sdtmig_datasets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


