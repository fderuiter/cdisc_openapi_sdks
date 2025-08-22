# SdtmDataset


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**dataset_structure** | **str** |  | [optional] 
**links** | [**SdtmDatasetLinks**](SdtmDatasetLinks.md) |  | [optional] 
**dataset_variables** | [**List[SdtmDatasetVariable]**](SdtmDatasetVariable.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_dataset import SdtmDataset

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmDataset from a JSON string
sdtm_dataset_instance = SdtmDataset.from_json(json)
# print the JSON string representation of the object
print(SdtmDataset.to_json())

# convert the object into a dict
sdtm_dataset_dict = sdtm_dataset_instance.to_dict()
# create an instance of SdtmDataset from a dict
sdtm_dataset_from_dict = SdtmDataset.from_dict(sdtm_dataset_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


