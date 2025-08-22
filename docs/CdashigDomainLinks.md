# CdashigDomainLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] 
**parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**parent_class** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] 
**prior_version** | [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] 
**scenarios** | [**List[CdashigScenarioRefElement]**](CdashigScenarioRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_domain_links import CdashigDomainLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigDomainLinks from a JSON string
cdashig_domain_links_instance = CdashigDomainLinks.from_json(json)
# print the JSON string representation of the object
print CdashigDomainLinks.to_json()

# convert the object into a dict
cdashig_domain_links_dict = cdashig_domain_links_instance.to_dict()
# create an instance of CdashigDomainLinks from a dict
cdashig_domain_links_from_dict = CdashigDomainLinks.from_dict(cdashig_domain_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


