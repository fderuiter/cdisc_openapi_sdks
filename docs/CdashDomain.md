# CdashDomain


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**links** | [**CdashDomainLinks**](CdashDomainLinks.md) |  | [optional] 
**fields** | [**List[CdashDomainField]**](CdashDomainField.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_domain import CdashDomain

# TODO update the JSON string below
json = "{}"
# create an instance of CdashDomain from a JSON string
cdash_domain_instance = CdashDomain.from_json(json)
# print the JSON string representation of the object
print CdashDomain.to_json()

# convert the object into a dict
cdash_domain_dict = cdash_domain_instance.to_dict()
# create an instance of CdashDomain from a dict
cdash_domain_from_dict = CdashDomain.from_dict(cdash_domain_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


