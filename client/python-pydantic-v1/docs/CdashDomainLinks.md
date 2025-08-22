# CdashDomainLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashDomainRef**](CdashDomainRef.md) |  | [optional] 
**parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**parent_class** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] 
**prior_version** | [**CdashDomainRef**](CdashDomainRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_domain_links import CdashDomainLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashDomainLinks from a JSON string
cdash_domain_links_instance = CdashDomainLinks.from_json(json)
# print the JSON string representation of the object
print CdashDomainLinks.to_json()

# convert the object into a dict
cdash_domain_links_dict = cdash_domain_links_instance.to_dict()
# create an instance of CdashDomainLinks from a dict
cdash_domain_links_from_dict = CdashDomainLinks.from_dict(cdash_domain_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


