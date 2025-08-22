# SdtmDataset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**DatasetStructure** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**SdtmDatasetLinks**](SdtmDatasetLinks.md) |  | [optional] 
**DatasetVariables** | Pointer to [**[]SdtmDatasetVariable**](SdtmDatasetVariable.md) |  | [optional] 

## Methods

### NewSdtmDataset

`func NewSdtmDataset() *SdtmDataset`

NewSdtmDataset instantiates a new SdtmDataset object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmDatasetWithDefaults

`func NewSdtmDatasetWithDefaults() *SdtmDataset`

NewSdtmDatasetWithDefaults instantiates a new SdtmDataset object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SdtmDataset) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SdtmDataset) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SdtmDataset) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SdtmDataset) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SdtmDataset) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmDataset) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmDataset) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmDataset) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmDataset) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmDataset) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmDataset) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmDataset) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmDataset) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmDataset) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmDataset) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmDataset) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetDatasetStructure

`func (o *SdtmDataset) GetDatasetStructure() string`

GetDatasetStructure returns the DatasetStructure field if non-nil, zero value otherwise.

### GetDatasetStructureOk

`func (o *SdtmDataset) GetDatasetStructureOk() (*string, bool)`

GetDatasetStructureOk returns a tuple with the DatasetStructure field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasetStructure

`func (o *SdtmDataset) SetDatasetStructure(v string)`

SetDatasetStructure sets DatasetStructure field to given value.

### HasDatasetStructure

`func (o *SdtmDataset) HasDatasetStructure() bool`

HasDatasetStructure returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmDataset) GetLinks() SdtmDatasetLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmDataset) GetLinksOk() (*SdtmDatasetLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmDataset) SetLinks(v SdtmDatasetLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmDataset) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDatasetVariables

`func (o *SdtmDataset) GetDatasetVariables() []SdtmDatasetVariable`

GetDatasetVariables returns the DatasetVariables field if non-nil, zero value otherwise.

### GetDatasetVariablesOk

`func (o *SdtmDataset) GetDatasetVariablesOk() (*[]SdtmDatasetVariable, bool)`

GetDatasetVariablesOk returns a tuple with the DatasetVariables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasetVariables

`func (o *SdtmDataset) SetDatasetVariables(v []SdtmDatasetVariable)`

SetDatasetVariables sets DatasetVariables field to given value.

### HasDatasetVariables

`func (o *SdtmDataset) HasDatasetVariables() bool`

HasDatasetVariables returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


