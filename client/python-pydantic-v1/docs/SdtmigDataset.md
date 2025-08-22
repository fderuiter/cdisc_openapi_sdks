# SdtmigDataset


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**dataset_structure** | **str** |  | [optional] 
**links** | [**SdtmigDatasetLinks**](SdtmigDatasetLinks.md) |  | [optional] 
**dataset_variables** | [**List[SdtmigDatasetVariable]**](SdtmigDatasetVariable.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtmig_dataset import SdtmigDataset

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmigDataset from a JSON string
sdtmig_dataset_instance = SdtmigDataset.from_json(json)
# print the JSON string representation of the object
print SdtmigDataset.to_json()

# convert the object into a dict
sdtmig_dataset_dict = sdtmig_dataset_instance.to_dict()
# create an instance of SdtmigDataset from a dict
sdtmig_dataset_from_dict = SdtmigDataset.from_dict(sdtmig_dataset_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


