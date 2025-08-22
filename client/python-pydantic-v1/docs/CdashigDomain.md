# CdashigDomain


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**links** | [**CdashigDomainLinks**](CdashigDomainLinks.md) |  | [optional] 
**fields** | [**List[CdashigDomainField]**](CdashigDomainField.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_domain import CdashigDomain

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigDomain from a JSON string
cdashig_domain_instance = CdashigDomain.from_json(json)
# print the JSON string representation of the object
print CdashigDomain.to_json()

# convert the object into a dict
cdashig_domain_dict = cdashig_domain_instance.to_dict()
# create an instance of CdashigDomain from a dict
cdashig_domain_from_dict = CdashigDomain.from_dict(cdashig_domain_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


