# CdashClassLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] 
**parent_product** | [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**prior_version** | [**CdashClassRef**](CdashClassRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_class_links import CdashClassLinks

# TODO update the JSON string below
json = "{}"
# create an instance of CdashClassLinks from a JSON string
cdash_class_links_instance = CdashClassLinks.from_json(json)
# print the JSON string representation of the object
print CdashClassLinks.to_json()

# convert the object into a dict
cdash_class_links_dict = cdash_class_links_instance.to_dict()
# create an instance of CdashClassLinks from a dict
cdash_class_links_from_dict = CdashClassLinks.from_dict(cdash_class_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


