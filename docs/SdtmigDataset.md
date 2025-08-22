# SdtmigDataset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**DatasetStructure** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**SdtmigDatasetLinks**](SdtmigDatasetLinks.md) |  | [optional] 
**DatasetVariables** | Pointer to [**[]SdtmigDatasetVariable**](SdtmigDatasetVariable.md) |  | [optional] 

## Methods

### NewSdtmigDataset

`func NewSdtmigDataset() *SdtmigDataset`

NewSdtmigDataset instantiates a new SdtmigDataset object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmigDatasetWithDefaults

`func NewSdtmigDatasetWithDefaults() *SdtmigDataset`

NewSdtmigDatasetWithDefaults instantiates a new SdtmigDataset object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SdtmigDataset) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SdtmigDataset) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SdtmigDataset) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SdtmigDataset) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SdtmigDataset) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmigDataset) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmigDataset) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmigDataset) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmigDataset) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmigDataset) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmigDataset) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmigDataset) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmigDataset) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmigDataset) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmigDataset) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmigDataset) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetDatasetStructure

`func (o *SdtmigDataset) GetDatasetStructure() string`

GetDatasetStructure returns the DatasetStructure field if non-nil, zero value otherwise.

### GetDatasetStructureOk

`func (o *SdtmigDataset) GetDatasetStructureOk() (*string, bool)`

GetDatasetStructureOk returns a tuple with the DatasetStructure field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasetStructure

`func (o *SdtmigDataset) SetDatasetStructure(v string)`

SetDatasetStructure sets DatasetStructure field to given value.

### HasDatasetStructure

`func (o *SdtmigDataset) HasDatasetStructure() bool`

HasDatasetStructure returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmigDataset) GetLinks() SdtmigDatasetLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmigDataset) GetLinksOk() (*SdtmigDatasetLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmigDataset) SetLinks(v SdtmigDatasetLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmigDataset) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDatasetVariables

`func (o *SdtmigDataset) GetDatasetVariables() []SdtmigDatasetVariable`

GetDatasetVariables returns the DatasetVariables field if non-nil, zero value otherwise.

### GetDatasetVariablesOk

`func (o *SdtmigDataset) GetDatasetVariablesOk() (*[]SdtmigDatasetVariable, bool)`

GetDatasetVariablesOk returns a tuple with the DatasetVariables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasetVariables

`func (o *SdtmigDataset) SetDatasetVariables(v []SdtmigDatasetVariable)`

SetDatasetVariables sets DatasetVariables field to given value.

### HasDatasetVariables

`func (o *SdtmigDataset) HasDatasetVariables() bool`

HasDatasetVariables returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


