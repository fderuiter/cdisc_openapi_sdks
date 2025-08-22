# AdamProductDatastructures


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
**links** | [**AdamProductDatastructuresLinks**](AdamProductDatastructuresLinks.md) |  | [optional] 

## Example

```python
from openapi_client.models.adam_product_datastructures import AdamProductDatastructures

# TODO update the JSON string below
json = "{}"
# create an instance of AdamProductDatastructures from a JSON string
adam_product_datastructures_instance = AdamProductDatastructures.from_json(json)
# print the JSON string representation of the object
print AdamProductDatastructures.to_json()

# convert the object into a dict
adam_product_datastructures_dict = adam_product_datastructures_instance.to_dict()
# create an instance of AdamProductDatastructures from a dict
adam_product_datastructures_from_dict = AdamProductDatastructures.from_dict(adam_product_datastructures_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


