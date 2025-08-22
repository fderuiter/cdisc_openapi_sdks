# CdashigProductDomains


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
**links** | [**CdashigProductDomainsLinks**](CdashigProductDomainsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_product_domains import CdashigProductDomains

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigProductDomains from a JSON string
cdashig_product_domains_instance = CdashigProductDomains.from_json(json)
# print the JSON string representation of the object
print CdashigProductDomains.to_json()

# convert the object into a dict
cdashig_product_domains_dict = cdashig_product_domains_instance.to_dict()
# create an instance of CdashigProductDomains from a dict
cdashig_product_domains_from_dict = CdashigProductDomains.from_dict(cdashig_product_domains_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


