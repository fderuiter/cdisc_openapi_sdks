# SdtmClass

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**SdtmClassLinks**](SdtmClassLinks.md) |  | [optional] 
**ClassVariables** | Pointer to [**[]SdtmClassVariable**](SdtmClassVariable.md) |  | [optional] 
**Datasets** | Pointer to [**[]SdtmDataset**](SdtmDataset.md) |  | [optional] 

## Methods

### NewSdtmClass

`func NewSdtmClass() *SdtmClass`

NewSdtmClass instantiates a new SdtmClass object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmClassWithDefaults

`func NewSdtmClassWithDefaults() *SdtmClass`

NewSdtmClassWithDefaults instantiates a new SdtmClass object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SdtmClass) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SdtmClass) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SdtmClass) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SdtmClass) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SdtmClass) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmClass) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmClass) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmClass) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmClass) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmClass) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmClass) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmClass) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmClass) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmClass) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmClass) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmClass) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmClass) GetLinks() SdtmClassLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmClass) GetLinksOk() (*SdtmClassLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmClass) SetLinks(v SdtmClassLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmClass) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetClassVariables

`func (o *SdtmClass) GetClassVariables() []SdtmClassVariable`

GetClassVariables returns the ClassVariables field if non-nil, zero value otherwise.

### GetClassVariablesOk

`func (o *SdtmClass) GetClassVariablesOk() (*[]SdtmClassVariable, bool)`

GetClassVariablesOk returns a tuple with the ClassVariables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClassVariables

`func (o *SdtmClass) SetClassVariables(v []SdtmClassVariable)`

SetClassVariables sets ClassVariables field to given value.

### HasClassVariables

`func (o *SdtmClass) HasClassVariables() bool`

HasClassVariables returns a boolean if a field has been set.

### GetDatasets

`func (o *SdtmClass) GetDatasets() []SdtmDataset`

GetDatasets returns the Datasets field if non-nil, zero value otherwise.

### GetDatasetsOk

`func (o *SdtmClass) GetDatasetsOk() (*[]SdtmDataset, bool)`

GetDatasetsOk returns a tuple with the Datasets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasets

`func (o *SdtmClass) SetDatasets(v []SdtmDataset)`

SetDatasets sets Datasets field to given value.

### HasDatasets

`func (o *SdtmClass) HasDatasets() bool`

HasDatasets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


