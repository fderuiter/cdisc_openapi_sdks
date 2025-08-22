# CdashProductDomains


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**links** | [**CdashProductDomainsLinks**](CdashProductDomainsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_product_domains import CdashProductDomains

# TODO update the JSON string below
json = "{}"
# create an instance of CdashProductDomains from a JSON string
cdash_product_domains_instance = CdashProductDomains.from_json(json)
# print the JSON string representation of the object
print(CdashProductDomains.to_json())

# convert the object into a dict
cdash_product_domains_dict = cdash_product_domains_instance.to_dict()
# create an instance of CdashProductDomains from a dict
cdash_product_domains_from_dict = CdashProductDomains.from_dict(cdash_product_domains_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


