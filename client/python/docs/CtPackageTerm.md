# CtPackageTerm


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**concept_id** | **str** |  | [optional] 
**submission_value** | **str** |  | [optional] 
**definition** | **str** |  | [optional] 
**preferred_term** | **str** |  | [optional] 
**synonyms** | **List[str]** |  | [optional] 

## Example

```python
from openapi_client.models.ct_package_term import CtPackageTerm

# TODO update the JSON string below
json = "{}"
# create an instance of CtPackageTerm from a JSON string
ct_package_term_instance = CtPackageTerm.from_json(json)
# print the JSON string representation of the object
print(CtPackageTerm.to_json())

# convert the object into a dict
ct_package_term_dict = ct_package_term_instance.to_dict()
# create an instance of CtPackageTerm from a dict
ct_package_term_from_dict = CtPackageTerm.from_dict(ct_package_term_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


