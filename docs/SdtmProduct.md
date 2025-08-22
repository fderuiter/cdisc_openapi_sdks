# SdtmProduct

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Source** | Pointer to **string** |  | [optional] 
**EffectiveDate** | Pointer to **string** |  | [optional] 
**RegistrationStatus** | Pointer to **string** |  | [optional] 
**Version** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**SdtmProductLinks**](SdtmProductLinks.md) |  | [optional] 
**Classes** | Pointer to [**[]SdtmClass**](SdtmClass.md) |  | [optional] 
**Datasets** | Pointer to [**[]SdtmDataset**](SdtmDataset.md) |  | [optional] 

## Methods

### NewSdtmProduct

`func NewSdtmProduct() *SdtmProduct`

NewSdtmProduct instantiates a new SdtmProduct object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmProductWithDefaults

`func NewSdtmProductWithDefaults() *SdtmProduct`

NewSdtmProductWithDefaults instantiates a new SdtmProduct object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *SdtmProduct) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmProduct) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmProduct) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmProduct) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmProduct) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmProduct) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmProduct) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmProduct) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmProduct) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmProduct) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmProduct) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmProduct) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetSource

`func (o *SdtmProduct) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *SdtmProduct) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *SdtmProduct) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *SdtmProduct) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetEffectiveDate

`func (o *SdtmProduct) GetEffectiveDate() string`

GetEffectiveDate returns the EffectiveDate field if non-nil, zero value otherwise.

### GetEffectiveDateOk

`func (o *SdtmProduct) GetEffectiveDateOk() (*string, bool)`

GetEffectiveDateOk returns a tuple with the EffectiveDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveDate

`func (o *SdtmProduct) SetEffectiveDate(v string)`

SetEffectiveDate sets EffectiveDate field to given value.

### HasEffectiveDate

`func (o *SdtmProduct) HasEffectiveDate() bool`

HasEffectiveDate returns a boolean if a field has been set.

### GetRegistrationStatus

`func (o *SdtmProduct) GetRegistrationStatus() string`

GetRegistrationStatus returns the RegistrationStatus field if non-nil, zero value otherwise.

### GetRegistrationStatusOk

`func (o *SdtmProduct) GetRegistrationStatusOk() (*string, bool)`

GetRegistrationStatusOk returns a tuple with the RegistrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationStatus

`func (o *SdtmProduct) SetRegistrationStatus(v string)`

SetRegistrationStatus sets RegistrationStatus field to given value.

### HasRegistrationStatus

`func (o *SdtmProduct) HasRegistrationStatus() bool`

HasRegistrationStatus returns a boolean if a field has been set.

### GetVersion

`func (o *SdtmProduct) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *SdtmProduct) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *SdtmProduct) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *SdtmProduct) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmProduct) GetLinks() SdtmProductLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmProduct) GetLinksOk() (*SdtmProductLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmProduct) SetLinks(v SdtmProductLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmProduct) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetClasses

`func (o *SdtmProduct) GetClasses() []SdtmClass`

GetClasses returns the Classes field if non-nil, zero value otherwise.

### GetClassesOk

`func (o *SdtmProduct) GetClassesOk() (*[]SdtmClass, bool)`

GetClassesOk returns a tuple with the Classes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClasses

`func (o *SdtmProduct) SetClasses(v []SdtmClass)`

SetClasses sets Classes field to given value.

### HasClasses

`func (o *SdtmProduct) HasClasses() bool`

HasClasses returns a boolean if a field has been set.

### GetDatasets

`func (o *SdtmProduct) GetDatasets() []SdtmDataset`

GetDatasets returns the Datasets field if non-nil, zero value otherwise.

### GetDatasetsOk

`func (o *SdtmProduct) GetDatasetsOk() (*[]SdtmDataset, bool)`

GetDatasetsOk returns a tuple with the Datasets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatasets

`func (o *SdtmProduct) SetDatasets(v []SdtmDataset)`

SetDatasets sets Datasets field to given value.

### HasDatasets

`func (o *SdtmProduct) HasDatasets() bool`

HasDatasets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


