# CdashigDomainFieldsLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashigDomainFieldsRef**](CdashigDomainFieldsRef.md) |  | [optional] 
**parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**parent_class** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] 
**fields** | [**List[CdashigDomainFieldRefElement]**](CdashigDomainFieldRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_domain_fields_links import CdashigDomainFieldsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigDomainFieldsLinks from a JSON string
cdashig_domain_fields_links_instance = CdashigDomainFieldsLinks.from_json(json)
# print the JSON string representation of the object
print(CdashigDomainFieldsLinks.to_json())

# convert the object into a dict
cdashig_domain_fields_links_dict = cdashig_domain_fields_links_instance.to_dict()
# create an instance of CdashigDomainFieldsLinks from a dict
cdashig_domain_fields_links_from_dict = CdashigDomainFieldsLinks.from_dict(cdashig_domain_fields_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


