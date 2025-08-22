# CdashClassFieldLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashClassFieldRef**](CdashClassFieldRef.md) |  | [optional] 
**codelist** | [**List[RootCtCodelistRefElement]**](RootCtCodelistRefElement.md) |  | [optional] 
**parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**parent_class** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] 
**root_item** | [**RootCdashClassFieldRef**](RootCdashClassFieldRef.md) |  | [optional] 
**prior_version** | [**CdashClassFieldRef**](CdashClassFieldRef.md) |  | [optional] 
**sdtm_class_mapping_targets** | [**List[SdtmClassVariableRefTarget]**](SdtmClassVariableRefTarget.md) |  | [optional] 
**sdtm_dataset_mapping_targets** | [**List[SdtmDatasetVariableRefTarget]**](SdtmDatasetVariableRefTarget.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_class_field_links import CdashClassFieldLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashClassFieldLinks from a JSON string
cdash_class_field_links_instance = CdashClassFieldLinks.from_json(json)
# print the JSON string representation of the object
print CdashClassFieldLinks.to_json()

# convert the object into a dict
cdash_class_field_links_dict = cdash_class_field_links_instance.to_dict()
# create an instance of CdashClassFieldLinks from a dict
cdash_class_field_links_from_dict = CdashClassFieldLinks.from_dict(cdash_class_field_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


