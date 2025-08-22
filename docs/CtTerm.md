# CtTerm


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**concept_id** | **str** |  | [optional] 
**submission_value** | **str** |  | [optional] 
**definition** | **str** |  | [optional] 
**preferred_term** | **str** |  | [optional] 
**synonyms** | **List[str]** |  | [optional] 
**links** | [**CtTermLinks**](CtTermLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_term import CtTerm

# TODO update the JSON string below
json = "{}"
# create an instance of CtTerm from a JSON string
ct_term_instance = CtTerm.from_json(json)
# print the JSON string representation of the object
print(CtTerm.to_json())

# convert the object into a dict
ct_term_dict = ct_term_instance.to_dict()
# create an instance of CtTerm from a dict
ct_term_from_dict = CtTerm.from_dict(ct_term_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


