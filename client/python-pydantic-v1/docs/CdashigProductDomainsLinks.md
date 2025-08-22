# CdashigProductDomainsLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashigProductDomainsRef**](CdashigProductDomainsRef.md) |  | [optional] 
**parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**domains** | [**List[CdashigDomainRefElement]**](CdashigDomainRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_product_domains_links import CdashigProductDomainsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigProductDomainsLinks from a JSON string
cdashig_product_domains_links_instance = CdashigProductDomainsLinks.from_json(json)
# print the JSON string representation of the object
print CdashigProductDomainsLinks.to_json()

# convert the object into a dict
cdashig_product_domains_links_dict = cdashig_product_domains_links_instance.to_dict()
# create an instance of CdashigProductDomainsLinks from a dict
cdashig_product_domains_links_from_dict = CdashigProductDomainsLinks.from_dict(cdashig_product_domains_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


