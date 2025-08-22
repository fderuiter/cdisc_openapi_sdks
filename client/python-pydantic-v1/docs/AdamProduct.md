# AdamProduct


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**links** | [**AdamProductLinks**](AdamProductLinks.md) |  | [optional] 
**data_structures** | [**List[AdamDatastructure]**](AdamDatastructure.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_product import AdamProduct

# TODO update the JSON string below
json = "{}"
# create an instance of AdamProduct from a JSON string
adam_product_instance = AdamProduct.from_json(json)
# print the JSON string representation of the object
print AdamProduct.to_json()

# convert the object into a dict
adam_product_dict = adam_product_instance.to_dict()
# create an instance of AdamProduct from a dict
adam_product_from_dict = AdamProduct.from_dict(adam_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


