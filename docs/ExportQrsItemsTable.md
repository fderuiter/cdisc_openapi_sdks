# ExportQrsItemsTable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**List[ExportQrsCsvItemsRow]**](ExportQrsCsvItemsRow.md) |  | [optional] 

## Example

```python
from openapi_client.models.export_qrs_items_table import ExportQrsItemsTable

# TODO update the JSON string below
json = "{}"
# create an instance of ExportQrsItemsTable from a JSON string
export_qrs_items_table_instance = ExportQrsItemsTable.from_json(json)
# print the JSON string representation of the object
print(ExportQrsItemsTable.to_json())

# convert the object into a dict
export_qrs_items_table_dict = export_qrs_items_table_instance.to_dict()
# create an instance of ExportQrsItemsTable from a dict
export_qrs_items_table_from_dict = ExportQrsItemsTable.from_dict(export_qrs_items_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


