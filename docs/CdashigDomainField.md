# CdashigDomainField


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**definition** | **str** |  | [optional] 
**question_text** | **str** |  | [optional] 
**prompt** | **str** |  | [optional] 
**completion_instructions** | **str** |  | [optional] 
**implementation_notes** | **str** |  | [optional] 
**simple_datatype** | **str** |  | [optional] 
**mapping_instructions** | **str** |  | [optional] 
**core** | **str** |  | [optional] 
**links** | [**CdashigDomainFieldLinks**](CdashigDomainFieldLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_domain_field import CdashigDomainField

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigDomainField from a JSON string
cdashig_domain_field_instance = CdashigDomainField.from_json(json)
# print the JSON string representation of the object
print(CdashigDomainField.to_json())

# convert the object into a dict
cdashig_domain_field_dict = cdashig_domain_field_instance.to_dict()
# create an instance of CdashigDomainField from a dict
cdashig_domain_field_from_dict = CdashigDomainField.from_dict(cdashig_domain_field_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


