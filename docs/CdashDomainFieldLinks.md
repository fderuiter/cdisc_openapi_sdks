# CdashDomainFieldLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashDomainFieldRef**](CdashDomainFieldRef.md) |  | [optional] 
**codelist** | [**List[RootCtCodelistRefElement]**](RootCtCodelistRefElement.md) |  | [optional] 
**parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**parent_class** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] 
**parent_domain** | [**CdashDomainRef**](CdashDomainRef.md) |  | [optional] 
**root_item** | [**RootCdashDomainFieldRef**](RootCdashDomainFieldRef.md) |  | [optional] 
**prior_version** | [**CdashDomainFieldRef**](CdashDomainFieldRef.md) |  | [optional] 
**sdtm_dataset_mapping_targets** | [**List[SdtmDatasetVariableRefTarget]**](SdtmDatasetVariableRefTarget.md) |  | [optional] 
**sdtmig_dataset_mapping_targets** | [**List[SdtmigDatasetVariableRefTarget]**](SdtmigDatasetVariableRefTarget.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_domain_field_links import CdashDomainFieldLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashDomainFieldLinks from a JSON string
cdash_domain_field_links_instance = CdashDomainFieldLinks.from_json(json)
# print the JSON string representation of the object
print(CdashDomainFieldLinks.to_json())

# convert the object into a dict
cdash_domain_field_links_dict = cdash_domain_field_links_instance.to_dict()
# create an instance of CdashDomainFieldLinks from a dict
cdash_domain_field_links_from_dict = CdashDomainFieldLinks.from_dict(cdash_domain_field_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


