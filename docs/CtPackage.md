# CtPackage

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
**Links** | Pointer to [**CtPackageLinks**](CtPackageLinks.md) |  | [optional] 
**Codelists** | Pointer to [**[]CtPackageCodelists**](CtPackageCodelists.md) |  | [optional] 

## Methods

### NewCtPackage

`func NewCtPackage() *CtPackage`

NewCtPackage instantiates a new CtPackage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCtPackageWithDefaults

`func NewCtPackageWithDefaults() *CtPackage`

NewCtPackageWithDefaults instantiates a new CtPackage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *CtPackage) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CtPackage) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CtPackage) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CtPackage) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *CtPackage) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *CtPackage) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *CtPackage) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *CtPackage) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *CtPackage) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *CtPackage) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *CtPackage) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *CtPackage) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetSource

`func (o *CtPackage) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *CtPackage) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *CtPackage) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *CtPackage) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetEffectiveDate

`func (o *CtPackage) GetEffectiveDate() string`

GetEffectiveDate returns the EffectiveDate field if non-nil, zero value otherwise.

### GetEffectiveDateOk

`func (o *CtPackage) GetEffectiveDateOk() (*string, bool)`

GetEffectiveDateOk returns a tuple with the EffectiveDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveDate

`func (o *CtPackage) SetEffectiveDate(v string)`

SetEffectiveDate sets EffectiveDate field to given value.

### HasEffectiveDate

`func (o *CtPackage) HasEffectiveDate() bool`

HasEffectiveDate returns a boolean if a field has been set.

### GetRegistrationStatus

`func (o *CtPackage) GetRegistrationStatus() string`

GetRegistrationStatus returns the RegistrationStatus field if non-nil, zero value otherwise.

### GetRegistrationStatusOk

`func (o *CtPackage) GetRegistrationStatusOk() (*string, bool)`

GetRegistrationStatusOk returns a tuple with the RegistrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationStatus

`func (o *CtPackage) SetRegistrationStatus(v string)`

SetRegistrationStatus sets RegistrationStatus field to given value.

### HasRegistrationStatus

`func (o *CtPackage) HasRegistrationStatus() bool`

HasRegistrationStatus returns a boolean if a field has been set.

### GetVersion

`func (o *CtPackage) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *CtPackage) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *CtPackage) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *CtPackage) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetLinks

`func (o *CtPackage) GetLinks() CtPackageLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CtPackage) GetLinksOk() (*CtPackageLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CtPackage) SetLinks(v CtPackageLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CtPackage) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetCodelists

`func (o *CtPackage) GetCodelists() []CtPackageCodelists`

GetCodelists returns the Codelists field if non-nil, zero value otherwise.

### GetCodelistsOk

`func (o *CtPackage) GetCodelistsOk() (*[]CtPackageCodelists, bool)`

GetCodelistsOk returns a tuple with the Codelists field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelists

`func (o *CtPackage) SetCodelists(v []CtPackageCodelists)`

SetCodelists sets Codelists field to given value.

### HasCodelists

`func (o *CtPackage) HasCodelists() bool`

HasCodelists returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


