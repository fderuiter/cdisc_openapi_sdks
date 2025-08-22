# CdashProduct

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
**Links** | Pointer to [**CdashProductLinks**](CdashProductLinks.md) |  | [optional] 
**Classes** | Pointer to [**[]CdashClass**](CdashClass.md) |  | [optional] 
**Domains** | Pointer to [**[]CdashDomain**](CdashDomain.md) |  | [optional] 

## Methods

### NewCdashProduct

`func NewCdashProduct() *CdashProduct`

NewCdashProduct instantiates a new CdashProduct object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashProductWithDefaults

`func NewCdashProductWithDefaults() *CdashProduct`

NewCdashProductWithDefaults instantiates a new CdashProduct object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *CdashProduct) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CdashProduct) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CdashProduct) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CdashProduct) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *CdashProduct) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *CdashProduct) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *CdashProduct) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *CdashProduct) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *CdashProduct) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *CdashProduct) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *CdashProduct) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *CdashProduct) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetSource

`func (o *CdashProduct) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *CdashProduct) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *CdashProduct) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *CdashProduct) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetEffectiveDate

`func (o *CdashProduct) GetEffectiveDate() string`

GetEffectiveDate returns the EffectiveDate field if non-nil, zero value otherwise.

### GetEffectiveDateOk

`func (o *CdashProduct) GetEffectiveDateOk() (*string, bool)`

GetEffectiveDateOk returns a tuple with the EffectiveDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveDate

`func (o *CdashProduct) SetEffectiveDate(v string)`

SetEffectiveDate sets EffectiveDate field to given value.

### HasEffectiveDate

`func (o *CdashProduct) HasEffectiveDate() bool`

HasEffectiveDate returns a boolean if a field has been set.

### GetRegistrationStatus

`func (o *CdashProduct) GetRegistrationStatus() string`

GetRegistrationStatus returns the RegistrationStatus field if non-nil, zero value otherwise.

### GetRegistrationStatusOk

`func (o *CdashProduct) GetRegistrationStatusOk() (*string, bool)`

GetRegistrationStatusOk returns a tuple with the RegistrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationStatus

`func (o *CdashProduct) SetRegistrationStatus(v string)`

SetRegistrationStatus sets RegistrationStatus field to given value.

### HasRegistrationStatus

`func (o *CdashProduct) HasRegistrationStatus() bool`

HasRegistrationStatus returns a boolean if a field has been set.

### GetVersion

`func (o *CdashProduct) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *CdashProduct) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *CdashProduct) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *CdashProduct) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetLinks

`func (o *CdashProduct) GetLinks() CdashProductLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CdashProduct) GetLinksOk() (*CdashProductLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CdashProduct) SetLinks(v CdashProductLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CdashProduct) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetClasses

`func (o *CdashProduct) GetClasses() []CdashClass`

GetClasses returns the Classes field if non-nil, zero value otherwise.

### GetClassesOk

`func (o *CdashProduct) GetClassesOk() (*[]CdashClass, bool)`

GetClassesOk returns a tuple with the Classes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClasses

`func (o *CdashProduct) SetClasses(v []CdashClass)`

SetClasses sets Classes field to given value.

### HasClasses

`func (o *CdashProduct) HasClasses() bool`

HasClasses returns a boolean if a field has been set.

### GetDomains

`func (o *CdashProduct) GetDomains() []CdashDomain`

GetDomains returns the Domains field if non-nil, zero value otherwise.

### GetDomainsOk

`func (o *CdashProduct) GetDomainsOk() (*[]CdashDomain, bool)`

GetDomainsOk returns a tuple with the Domains field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomains

`func (o *CdashProduct) SetDomains(v []CdashDomain)`

SetDomains sets Domains field to given value.

### HasDomains

`func (o *CdashProduct) HasDomains() bool`

HasDomains returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


