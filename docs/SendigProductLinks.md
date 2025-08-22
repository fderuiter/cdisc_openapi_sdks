# SendigProductLinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] 
**model** | [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**prior_version** | [**SendigProductRef**](SendigProductRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_product_links import SendigProductLinks

# TODO update the JSON string below
json = "{}"
# create an instance of SendigProductLinks from a JSON string
sendig_product_links_instance = SendigProductLinks.from_json(json)
# print the JSON string representation of the object
print(SendigProductLinks.to_json())

# convert the object into a dict
sendig_product_links_dict = sendig_product_links_instance.to_dict()
# create an instance of SendigProductLinks from a dict
sendig_product_links_from_dict = SendigProductLinks.from_dict(sendig_product_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


