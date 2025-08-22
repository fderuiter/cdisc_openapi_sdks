# AdamVariable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**core** | **str** |  | [optional] 
**simple_datatype** | **str** |  | [optional] 
**described_value_domain** | **str** |  | [optional] 
**value_list** | **List[str]** |  | [optional] 
**links** | [**AdamVariableLinks**](AdamVariableLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_variable import AdamVariable

# TODO update the JSON string below
json = "{}"
# create an instance of AdamVariable from a JSON string
adam_variable_instance = AdamVariable.from_json(json)
# print the JSON string representation of the object
print(AdamVariable.to_json())

# convert the object into a dict
adam_variable_dict = adam_variable_instance.to_dict()
# create an instance of AdamVariable from a dict
adam_variable_from_dict = AdamVariable.from_dict(adam_variable_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


