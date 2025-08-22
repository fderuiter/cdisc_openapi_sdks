# CdashDomainFieldsLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashDomainFieldsRef**](CdashDomainFieldsRef.md) |  | [optional] 
**parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**parent_class** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] 
**fields** | [**List[CdashDomainFieldRefElement]**](CdashDomainFieldRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_domain_fields_links import CdashDomainFieldsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashDomainFieldsLinks from a JSON string
cdash_domain_fields_links_instance = CdashDomainFieldsLinks.from_json(json)
# print the JSON string representation of the object
print CdashDomainFieldsLinks.to_json()

# convert the object into a dict
cdash_domain_fields_links_dict = cdash_domain_fields_links_instance.to_dict()
# create an instance of CdashDomainFieldsLinks from a dict
cdash_domain_fields_links_from_dict = CdashDomainFieldsLinks.from_dict(cdash_domain_fields_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


