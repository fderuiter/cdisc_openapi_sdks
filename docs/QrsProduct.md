# QrsProduct


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**until_date** | **str** |  | [optional] 
**registration_status** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**qrs_type** | **str** |  | [optional] 
**links** | [**QrsProductLinks**](QrsProductLinks.md) |  | [optional] 
**items** | [**List[QrsItem]**](QrsItem.md) |  | [optional] 

## Example

```python
from openapi_client.models.qrs_product import QrsProduct

# TODO update the JSON string below
json = "{}"
# create an instance of QrsProduct from a JSON string
qrs_product_instance = QrsProduct.from_json(json)
# print the JSON string representation of the object
print QrsProduct.to_json()

# convert the object into a dict
qrs_product_dict = qrs_product_instance.to_dict()
# create an instance of QrsProduct from a dict
qrs_product_from_dict = QrsProduct.from_dict(qrs_product_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


