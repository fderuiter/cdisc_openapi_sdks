# SdtmDatasets


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
**links** | [**SdtmDatasetsLinks**](SdtmDatasetsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_datasets import SdtmDatasets

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmDatasets from a JSON string
sdtm_datasets_instance = SdtmDatasets.from_json(json)
# print the JSON string representation of the object
print SdtmDatasets.to_json()

# convert the object into a dict
sdtm_datasets_dict = sdtm_datasets_instance.to_dict()
# create an instance of SdtmDatasets from a dict
sdtm_datasets_from_dict = SdtmDatasets.from_dict(sdtm_datasets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


