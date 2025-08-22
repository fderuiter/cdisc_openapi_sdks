# CdashProductDomainsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashProductDomainsRef**](CdashProductDomainsRef.md) |  | [optional] 
**parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**domains** | [**List[CdashDomainRefElement]**](CdashDomainRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_product_domains_links import CdashProductDomainsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashProductDomainsLinks from a JSON string
cdash_product_domains_links_instance = CdashProductDomainsLinks.from_json(json)
# print the JSON string representation of the object
print(CdashProductDomainsLinks.to_json())

# convert the object into a dict
cdash_product_domains_links_dict = cdash_product_domains_links_instance.to_dict()
# create an instance of CdashProductDomainsLinks from a dict
cdash_product_domains_links_from_dict = CdashProductDomainsLinks.from_dict(cdash_product_domains_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


