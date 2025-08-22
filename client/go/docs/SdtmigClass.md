# SdtmigClass

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**SdtmigClassLinks**](SdtmigClassLinks.md) |  | [optional] 
**Datasets** | Pointer to [**[]SdtmigDataset**](SdtmigDataset.md) |  | [optional] 

## Methods

### NewSdtmigClass

`func NewSdtmigClass() *SdtmigClass`

NewSdtmigClass instantiates a new SdtmigClass object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmigClassWithDefaults

`func NewSdtmigClassWithDefaults() *SdtmigClass`

NewSdtmigClassWithDefaults instantiates a new SdtmigClass object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SdtmigClass) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SdtmigClass) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SdtmigClass) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SdtmigClass) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SdtmigClass) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmigClass) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmigClass) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmigClass) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmigClass) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmigClass) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmigClass) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmigClass) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmigClass) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmigClass) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmigClass) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmigClass) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmigClass) GetLinks() SdtmigClassLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmigClass) GetLinksOk() (*SdtmigClassLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmigClass) SetLinks(v SdtmigClassLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmigClass) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDatasets

`func (o *SdtmigClass) GetDatasets() []SdtmigDataset`

GetDatasets returns the Datasets field if non-nil, zero value otherwise.

### GetDatasetsOk

`func (o *SdtmigClass) GetDatasetsOk() (*[]SdtmigDataset, bool)`

GetDatasetsOk returns a tuple with the Datasets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasets

`func (o *SdtmigClass) SetDatasets(v []SdtmigDataset)`

SetDatasets sets Datasets field to given value.

### HasDatasets

`func (o *SdtmigClass) HasDatasets() bool`

HasDatasets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


