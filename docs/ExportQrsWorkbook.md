# ExportQrsWorkbook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**ExportQrsGeneral**](ExportQrsGeneral.md) |  | [optional] 
**Items** | Pointer to [**[]ExportQrsWorkbookItemsRow**](ExportQrsWorkbookItemsRow.md) |  | [optional] 
**Responses** | Pointer to [**[]ExportQrsResponses**](ExportQrsResponses.md) |  | [optional] 

## Methods

### NewExportQrsWorkbook

`func NewExportQrsWorkbook() *ExportQrsWorkbook`

NewExportQrsWorkbook instantiates a new ExportQrsWorkbook object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExportQrsWorkbookWithDefaults

`func NewExportQrsWorkbookWithDefaults() *ExportQrsWorkbook`

NewExportQrsWorkbookWithDefaults instantiates a new ExportQrsWorkbook object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *ExportQrsWorkbook) GetSelf() ExportQrsGeneral`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *ExportQrsWorkbook) GetSelfOk() (*ExportQrsGeneral, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *ExportQrsWorkbook) SetSelf(v ExportQrsGeneral)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *ExportQrsWorkbook) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetItems

`func (o *ExportQrsWorkbook) GetItems() []ExportQrsWorkbookItemsRow`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *ExportQrsWorkbook) GetItemsOk() (*[]ExportQrsWorkbookItemsRow, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *ExportQrsWorkbook) SetItems(v []ExportQrsWorkbookItemsRow)`

SetItems sets Items field to given value.

### HasItems

`func (o *ExportQrsWorkbook) HasItems() bool`

HasItems returns a boolean if a field has been set.

### GetResponses

`func (o *ExportQrsWorkbook) GetResponses() []ExportQrsResponses`

GetResponses returns the Responses field if non-nil, zero value otherwise.

### GetResponsesOk

`func (o *ExportQrsWorkbook) GetResponsesOk() (*[]ExportQrsResponses, bool)`

GetResponsesOk returns a tuple with the Responses field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponses

`func (o *ExportQrsWorkbook) SetResponses(v []ExportQrsResponses)`

SetResponses sets Responses field to given value.

### HasResponses

`func (o *ExportQrsWorkbook) HasResponses() bool`

HasResponses returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


