# CdashigClass


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**CdashigClassLinks**](CdashigClassLinks.md) |  | [optional] 
**domains** | [**List[CdashigDomain]**](CdashigDomain.md) |  | [optional] 
**scenarios** | [**List[CdashigScenario]**](CdashigScenario.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_class import CdashigClass

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigClass from a JSON string
cdashig_class_instance = CdashigClass.from_json(json)
# print the JSON string representation of the object
print(CdashigClass.to_json())

# convert the object into a dict
cdashig_class_dict = cdashig_class_instance.to_dict()
# create an instance of CdashigClass from a dict
cdashig_class_from_dict = CdashigClass.from_dict(cdashig_class_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


