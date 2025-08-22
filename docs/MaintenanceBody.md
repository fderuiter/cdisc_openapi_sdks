# MaintenanceBody


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maintenance_mode** | **bool** |  | [optional] 
**maintenance_message** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.maintenance_body import MaintenanceBody

# TODO update the JSON string below
json = "{}"
# create an instance of MaintenanceBody from a JSON string
maintenance_body_instance = MaintenanceBody.from_json(json)
# print the JSON string representation of the object
print(MaintenanceBody.to_json())

# convert the object into a dict
maintenance_body_dict = maintenance_body_instance.to_dict()
# create an instance of MaintenanceBody from a dict
maintenance_body_from_dict = MaintenanceBody.from_dict(maintenance_body_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


