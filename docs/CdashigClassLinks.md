# CdashigClassLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] 
**model_class** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] 
**parent_product** | [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**parent_class** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] 
**subclasses** | [**List[CdashigClassRefSubclass]**](CdashigClassRefSubclass.md) |  | [optional] 
**prior_version** | [**CdashigClassRef**](CdashigClassRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_class_links import CdashigClassLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigClassLinks from a JSON string
cdashig_class_links_instance = CdashigClassLinks.from_json(json)
# print the JSON string representation of the object
print CdashigClassLinks.to_json()

# convert the object into a dict
cdashig_class_links_dict = cdashig_class_links_instance.to_dict()
# create an instance of CdashigClassLinks from a dict
cdashig_class_links_from_dict = CdashigClassLinks.from_dict(cdashig_class_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


