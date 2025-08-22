# SdtmigProduct

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
**Links** | Pointer to [**SdtmigProductLinks**](SdtmigProductLinks.md) |  | [optional] 
**Classes** | Pointer to [**[]SdtmigClass**](SdtmigClass.md) |  | [optional] 

## Methods

### NewSdtmigProduct

`func NewSdtmigProduct() *SdtmigProduct`

NewSdtmigProduct instantiates a new SdtmigProduct object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmigProductWithDefaults

`func NewSdtmigProductWithDefaults() *SdtmigProduct`

NewSdtmigProductWithDefaults instantiates a new SdtmigProduct object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *SdtmigProduct) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmigProduct) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmigProduct) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmigProduct) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmigProduct) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmigProduct) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmigProduct) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmigProduct) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmigProduct) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmigProduct) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmigProduct) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmigProduct) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetSource

`func (o *SdtmigProduct) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *SdtmigProduct) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *SdtmigProduct) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *SdtmigProduct) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetEffectiveDate

`func (o *SdtmigProduct) GetEffectiveDate() string`

GetEffectiveDate returns the EffectiveDate field if non-nil, zero value otherwise.

### GetEffectiveDateOk

`func (o *SdtmigProduct) GetEffectiveDateOk() (*string, bool)`

GetEffectiveDateOk returns a tuple with the EffectiveDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveDate

`func (o *SdtmigProduct) SetEffectiveDate(v string)`

SetEffectiveDate sets EffectiveDate field to given value.

### HasEffectiveDate

`func (o *SdtmigProduct) HasEffectiveDate() bool`

HasEffectiveDate returns a boolean if a field has been set.

### GetRegistrationStatus

`func (o *SdtmigProduct) GetRegistrationStatus() string`

GetRegistrationStatus returns the RegistrationStatus field if non-nil, zero value otherwise.

### GetRegistrationStatusOk

`func (o *SdtmigProduct) GetRegistrationStatusOk() (*string, bool)`

GetRegistrationStatusOk returns a tuple with the RegistrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationStatus

`func (o *SdtmigProduct) SetRegistrationStatus(v string)`

SetRegistrationStatus sets RegistrationStatus field to given value.

### HasRegistrationStatus

`func (o *SdtmigProduct) HasRegistrationStatus() bool`

HasRegistrationStatus returns a boolean if a field has been set.

### GetVersion

`func (o *SdtmigProduct) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *SdtmigProduct) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *SdtmigProduct) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *SdtmigProduct) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmigProduct) GetLinks() SdtmigProductLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmigProduct) GetLinksOk() (*SdtmigProductLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmigProduct) SetLinks(v SdtmigProductLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmigProduct) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetClasses

`func (o *SdtmigProduct) GetClasses() []SdtmigClass`

GetClasses returns the Classes field if non-nil, zero value otherwise.

### GetClassesOk

`func (o *SdtmigProduct) GetClassesOk() (*[]SdtmigClass, bool)`

GetClassesOk returns a tuple with the Classes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClasses

`func (o *SdtmigProduct) SetClasses(v []SdtmigClass)`

SetClasses sets Classes field to given value.

### HasClasses

`func (o *SdtmigProduct) HasClasses() bool`

HasClasses returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


