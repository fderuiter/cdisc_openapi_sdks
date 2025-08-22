# ExportSdtmigWorkbook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Variables** | Pointer to [**[]ExportSdtmigVariablesRow**](ExportSdtmigVariablesRow.md) |  | [optional] 
**Datasets** | Pointer to [**[]ExportSdtmigDatasetsRow**](ExportSdtmigDatasetsRow.md) |  | [optional] 

## Methods

### NewExportSdtmigWorkbook

`func NewExportSdtmigWorkbook() *ExportSdtmigWorkbook`

NewExportSdtmigWorkbook instantiates a new ExportSdtmigWorkbook object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExportSdtmigWorkbookWithDefaults

`func NewExportSdtmigWorkbookWithDefaults() *ExportSdtmigWorkbook`

NewExportSdtmigWorkbookWithDefaults instantiates a new ExportSdtmigWorkbook object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVariables

`func (o *ExportSdtmigWorkbook) GetVariables() []ExportSdtmigVariablesRow`

GetVariables returns the Variables field if non-nil, zero value otherwise.

### GetVariablesOk

`func (o *ExportSdtmigWorkbook) GetVariablesOk() (*[]ExportSdtmigVariablesRow, bool)`

GetVariablesOk returns a tuple with the Variables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariables

`func (o *ExportSdtmigWorkbook) SetVariables(v []ExportSdtmigVariablesRow)`

SetVariables sets Variables field to given value.

### HasVariables

`func (o *ExportSdtmigWorkbook) HasVariables() bool`

HasVariables returns a boolean if a field has been set.

### GetDatasets

`func (o *ExportSdtmigWorkbook) GetDatasets() []ExportSdtmigDatasetsRow`

GetDatasets returns the Datasets field if non-nil, zero value otherwise.

### GetDatasetsOk

`func (o *ExportSdtmigWorkbook) GetDatasetsOk() (*[]ExportSdtmigDatasetsRow, bool)`

GetDatasetsOk returns a tuple with the Datasets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasets

`func (o *ExportSdtmigWorkbook) SetDatasets(v []ExportSdtmigDatasetsRow)`

SetDatasets sets Datasets field to given value.

### HasDatasets

`func (o *ExportSdtmigWorkbook) HasDatasets() bool`

HasDatasets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


