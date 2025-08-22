# CdashDomainFields


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**links** | [**CdashDomainFieldsLinks**](CdashDomainFieldsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_domain_fields import CdashDomainFields

# TODO update the JSON string below
json = "{}"
# create an instance of CdashDomainFields from a JSON string
cdash_domain_fields_instance = CdashDomainFields.from_json(json)
# print the JSON string representation of the object
print CdashDomainFields.to_json()

# convert the object into a dict
cdash_domain_fields_dict = cdash_domain_fields_instance.to_dict()
# create an instance of CdashDomainFields from a dict
cdash_domain_fields_from_dict = CdashDomainFields.from_dict(cdash_domain_fields_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


