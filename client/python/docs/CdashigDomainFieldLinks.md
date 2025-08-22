# CdashigDomainFieldLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashigDomainFieldRef**](CdashigDomainFieldRef.md) |  | [optional] 
**codelist** | [**List[RootCtCodelistRefElement]**](RootCtCodelistRefElement.md) |  | [optional] 
**parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**parent_domain** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] 
**root_item** | [**RootCdashigDomainFieldRef**](RootCdashigDomainFieldRef.md) |  | [optional] 
**prior_version** | [**CdashigDomainFieldRef**](CdashigDomainFieldRef.md) |  | [optional] 
**sdtm_class_mapping_targets** | [**List[SdtmClassVariableRefTarget]**](SdtmClassVariableRefTarget.md) |  | [optional] 
**sdtmig_dataset_mapping_targets** | [**List[SdtmigDatasetVariableRefTarget]**](SdtmigDatasetVariableRefTarget.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_domain_field_links import CdashigDomainFieldLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigDomainFieldLinks from a JSON string
cdashig_domain_field_links_instance = CdashigDomainFieldLinks.from_json(json)
# print the JSON string representation of the object
print(CdashigDomainFieldLinks.to_json())

# convert the object into a dict
cdashig_domain_field_links_dict = cdashig_domain_field_links_instance.to_dict()
# create an instance of CdashigDomainFieldLinks from a dict
cdashig_domain_field_links_from_dict = CdashigDomainFieldLinks.from_dict(cdashig_domain_field_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


