# CtCodelistTerms


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**concept_id** | **str** |  | [optional] 
**extensible** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**submission_value** | **str** |  | [optional] 
**definition** | **str** |  | [optional] 
**preferred_term** | **str** |  | [optional] 
**synonyms** | **List[str]** |  | [optional] 
**links** | [**CtCodelistTermsLinks**](CtCodelistTermsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_codelist_terms import CtCodelistTerms

# TODO update the JSON string below
json = "{}"
# create an instance of CtCodelistTerms from a JSON string
ct_codelist_terms_instance = CtCodelistTerms.from_json(json)
# print the JSON string representation of the object
print CtCodelistTerms.to_json()

# convert the object into a dict
ct_codelist_terms_dict = ct_codelist_terms_instance.to_dict()
# create an instance of CtCodelistTerms from a dict
ct_codelist_terms_from_dict = CtCodelistTerms.from_dict(ct_codelist_terms_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


