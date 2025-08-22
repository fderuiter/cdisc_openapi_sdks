# ProductgroupDataTabulationLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**ProductgroupRef**](ProductgroupRef.md) |  | [optional] 
**sdtm** | [**List[SdtmProductRefElement]**](SdtmProductRefElement.md) |  | [optional] 
**sdtmig** | [**List[SdtmigProductRefElement]**](SdtmigProductRefElement.md) |  | [optional] 
**sendig** | [**List[SendigProductRefElement]**](SendigProductRefElement.md) |  | [optional] 

## Example

```python
from openapi_client.models.productgroup_data_tabulation_links import ProductgroupDataTabulationLinks

# TODO update the JSON string below
json = "{}"
# create an instance of ProductgroupDataTabulationLinks from a JSON string
productgroup_data_tabulation_links_instance = ProductgroupDataTabulationLinks.from_json(json)
# print the JSON string representation of the object
print ProductgroupDataTabulationLinks.to_json()

# convert the object into a dict
productgroup_data_tabulation_links_dict = productgroup_data_tabulation_links_instance.to_dict()
# create an instance of ProductgroupDataTabulationLinks from a dict
productgroup_data_tabulation_links_from_dict = ProductgroupDataTabulationLinks.from_dict(productgroup_data_tabulation_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


