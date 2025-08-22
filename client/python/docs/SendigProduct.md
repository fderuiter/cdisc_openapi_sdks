# SendigProduct


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
**links** | [**SendigProductLinks**](SendigProductLinks.md) |  | [optional] 
**classes** | [**List[SendigClass]**](SendigClass.md) |  | [optional] 

## Example

```python
from openapi_client.models.sendig_product import SendigProduct

# TODO update the JSON string below
json = "{}"
# create an instance of SendigProduct from a JSON string
sendig_product_instance = SendigProduct.from_json(json)
# print the JSON string representation of the object
print(SendigProduct.to_json())

# convert the object into a dict
sendig_product_dict = sendig_product_instance.to_dict()
# create an instance of SendigProduct from a dict
sendig_product_from_dict = SendigProduct.from_dict(sendig_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


