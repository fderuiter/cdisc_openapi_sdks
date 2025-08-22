# ProductsLinks


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**ProductsRef**](ProductsRef.md) |  | [optional] 
**data_collection** | [**ProductgroupDataCollection**](ProductgroupDataCollection.md) |  | [optional] 
**data_tabulation** | [**ProductgroupDataTabulation**](ProductgroupDataTabulation.md) |  | [optional] 
**data_analysis** | [**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md) |  | [optional] 
**terminology** | [**ProductgroupTerminology**](ProductgroupTerminology.md) |  | [optional] 
**measure** | [**ProductgroupQrs**](ProductgroupQrs.md) |  | [optional] 

## Example

```python
from openapi_client.models.products_links import ProductsLinks

# TODO update the JSON string below
json = "{}"
# create an instance of ProductsLinks from a JSON string
products_links_instance = ProductsLinks.from_json(json)
# print the JSON string representation of the object
print ProductsLinks.to_json()

# convert the object into a dict
products_links_dict = products_links_instance.to_dict()
# create an instance of ProductsLinks from a dict
products_links_from_dict = ProductsLinks.from_dict(products_links_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


