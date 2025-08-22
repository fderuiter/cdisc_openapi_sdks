# CdashDomainField


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**definition** | **str** |  | [optional] 
**domain_specific** | **str** |  | [optional] 
**question_text** | **str** |  | [optional] 
**prompt** | **str** |  | [optional] 
**simple_datatype** | **str** |  | [optional] 
**implementation_notes** | **str** |  | [optional] 
**mapping_instructions** | **str** |  | [optional] 
**links** | [**CdashDomainFieldLinks**](CdashDomainFieldLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_domain_field import CdashDomainField

# TODO update the JSON string below
json = "{}"
# create an instance of CdashDomainField from a JSON string
cdash_domain_field_instance = CdashDomainField.from_json(json)
# print the JSON string representation of the object
print CdashDomainField.to_json()

# convert the object into a dict
cdash_domain_field_dict = cdash_domain_field_instance.to_dict()
# create an instance of CdashDomainField from a dict
cdash_domain_field_from_dict = CdashDomainField.from_dict(cdash_domain_field_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


