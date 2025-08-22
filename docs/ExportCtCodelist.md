# ExportCtCodelist


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**codelist_code** | **str** |  | [optional] 
**codelist_extensible__yes_no** | **str** |  | [optional] 
**codelist_name** | **str** |  | [optional] 
**cdisc_submission_value** | **str** |  | [optional] 
**cdisc_synonym_s** | **List[str]** |  | [optional] 
**cdisc_definition** | **str** |  | [optional] 
**nci_preferred_term** | **str** |  | [optional] 
**standard_and_date** | **str** |  | [optional] 
**** | [**List[ExportCtTerm]**](ExportCtTerm.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_ct_codelist import ExportCtCodelist

# TODO update the JSON string below
json = "{}"
# create an instance of ExportCtCodelist from a JSON string
export_ct_codelist_instance = ExportCtCodelist.from_json(json)
# print the JSON string representation of the object
print(ExportCtCodelist.to_json())

# convert the object into a dict
export_ct_codelist_dict = export_ct_codelist_instance.to_dict()
# create an instance of ExportCtCodelist from a dict
export_ct_codelist_from_dict = ExportCtCodelist.from_dict(export_ct_codelist_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


