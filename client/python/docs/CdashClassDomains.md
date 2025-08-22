# CdashClassDomains


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ordinal** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**links** | [**CdashClassDomainsLinks**](CdashClassDomainsLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.cdash_class_domains import CdashClassDomains

# TODO update the JSON string below
json = "{}"
# create an instance of CdashClassDomains from a JSON string
cdash_class_domains_instance = CdashClassDomains.from_json(json)
# print the JSON string representation of the object
print(CdashClassDomains.to_json())

# convert the object into a dict
cdash_class_domains_dict = cdash_class_domains_instance.to_dict()
# create an instance of CdashClassDomains from a dict
cdash_class_domains_from_dict = CdashClassDomains.from_dict(cdash_class_domains_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


