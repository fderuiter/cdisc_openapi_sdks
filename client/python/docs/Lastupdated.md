# Lastupdated


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**LastupdatedLinks**](LastupdatedLinks.md) |  | [optional] 
**overall** | **str** |  | [optional] 
**data_analysis** | **str** |  | [optional] 
**data_collection** | **str** |  | [optional] 
**data_tabulation** | **str** |  | [optional] 
**measure** | **str** |  | [optional] 
**terminology** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.lastupdated import Lastupdated

# TODO update the JSON string below
json = "{}"
# create an instance of Lastupdated from a JSON string
lastupdated_instance = Lastupdated.from_json(json)
# print the JSON string representation of the object
print(Lastupdated.to_json())

# convert the object into a dict
lastupdated_dict = lastupdated_instance.to_dict()
# create an instance of Lastupdated from a dict
lastupdated_from_dict = Lastupdated.from_dict(lastupdated_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


