# CdashigClassDomains


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**CdashigClassDomainsLinks**](CdashigClassDomainsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdashig_class_domains import CdashigClassDomains

# TODO update the JSON string below
json = "{}"
# create an instance of CdashigClassDomains from a JSON string
cdashig_class_domains_instance = CdashigClassDomains.from_json(json)
# print the JSON string representation of the object
print CdashigClassDomains.to_json()

# convert the object into a dict
cdashig_class_domains_dict = cdashig_class_domains_instance.to_dict()
# create an instance of CdashigClassDomains from a dict
cdashig_class_domains_from_dict = CdashigClassDomains.from_dict(cdashig_class_domains_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


