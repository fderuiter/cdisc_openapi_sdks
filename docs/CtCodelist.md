# CtCodelist


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
**links** | [**CtCodelistLinks**](CtCodelistLinks.md) |  | [optional] 
**terms** | [**List[CtPackageTerm]**](CtPackageTerm.md) |  | [optional] 

## Example

```python
from openapi_client.models.ct_codelist import CtCodelist

# TODO update the JSON string below
json = "{}"
# create an instance of CtCodelist from a JSON string
ct_codelist_instance = CtCodelist.from_json(json)
# print the JSON string representation of the object
print(CtCodelist.to_json())

# convert the object into a dict
ct_codelist_dict = ct_codelist_instance.to_dict()
# create an instance of CtCodelist from a dict
ct_codelist_from_dict = CtCodelist.from_dict(ct_codelist_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


