# SdtmClassDatasets


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**SdtmClassDatasetsLinks**](SdtmClassDatasetsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.sdtm_class_datasets import SdtmClassDatasets

# TODO update the JSON string below
json = "{}"
# create an instance of SdtmClassDatasets from a JSON string
sdtm_class_datasets_instance = SdtmClassDatasets.from_json(json)
# print the JSON string representation of the object
print SdtmClassDatasets.to_json()

# convert the object into a dict
sdtm_class_datasets_dict = sdtm_class_datasets_instance.to_dict()
# create an instance of SdtmClassDatasets from a dict
sdtm_class_datasets_from_dict = SdtmClassDatasets.from_dict(sdtm_class_datasets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


