# CdashigProduct

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
**Links** | Pointer to [**CdashigProductLinks**](CdashigProductLinks.md) |  | [optional] 
**Classes** | Pointer to [**[]CdashigClass**](CdashigClass.md) |  | [optional] 

## Methods

### NewCdashigProduct

`func NewCdashigProduct() *CdashigProduct`

NewCdashigProduct instantiates a new CdashigProduct object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashigProductWithDefaults

`func NewCdashigProductWithDefaults() *CdashigProduct`

NewCdashigProductWithDefaults instantiates a new CdashigProduct object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *CdashigProduct) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CdashigProduct) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CdashigProduct) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CdashigProduct) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *CdashigProduct) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *CdashigProduct) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *CdashigProduct) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *CdashigProduct) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *CdashigProduct) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *CdashigProduct) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *CdashigProduct) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *CdashigProduct) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetSource

`func (o *CdashigProduct) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *CdashigProduct) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *CdashigProduct) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *CdashigProduct) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetEffectiveDate

`func (o *CdashigProduct) GetEffectiveDate() string`

GetEffectiveDate returns the EffectiveDate field if non-nil, zero value otherwise.

### GetEffectiveDateOk

`func (o *CdashigProduct) GetEffectiveDateOk() (*string, bool)`

GetEffectiveDateOk returns a tuple with the EffectiveDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveDate

`func (o *CdashigProduct) SetEffectiveDate(v string)`

SetEffectiveDate sets EffectiveDate field to given value.

### HasEffectiveDate

`func (o *CdashigProduct) HasEffectiveDate() bool`

HasEffectiveDate returns a boolean if a field has been set.

### GetRegistrationStatus

`func (o *CdashigProduct) GetRegistrationStatus() string`

GetRegistrationStatus returns the RegistrationStatus field if non-nil, zero value otherwise.

### GetRegistrationStatusOk

`func (o *CdashigProduct) GetRegistrationStatusOk() (*string, bool)`

GetRegistrationStatusOk returns a tuple with the RegistrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationStatus

`func (o *CdashigProduct) SetRegistrationStatus(v string)`

SetRegistrationStatus sets RegistrationStatus field to given value.

### HasRegistrationStatus

`func (o *CdashigProduct) HasRegistrationStatus() bool`

HasRegistrationStatus returns a boolean if a field has been set.

### GetVersion

`func (o *CdashigProduct) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *CdashigProduct) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *CdashigProduct) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *CdashigProduct) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetLinks

`func (o *CdashigProduct) GetLinks() CdashigProductLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CdashigProduct) GetLinksOk() (*CdashigProductLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CdashigProduct) SetLinks(v CdashigProductLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CdashigProduct) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetClasses

`func (o *CdashigProduct) GetClasses() []CdashigClass`

GetClasses returns the Classes field if non-nil, zero value otherwise.

### GetClassesOk

`func (o *CdashigProduct) GetClassesOk() (*[]CdashigClass, bool)`

GetClassesOk returns a tuple with the Classes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClasses

`func (o *CdashigProduct) SetClasses(v []CdashigClass)`

SetClasses sets Classes field to given value.

### HasClasses

`func (o *CdashigProduct) HasClasses() bool`

HasClasses returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


