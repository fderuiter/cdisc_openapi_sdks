# SendigProduct

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
**Links** | Pointer to [**SendigProductLinks**](SendigProductLinks.md) |  | [optional] 
**Classes** | Pointer to [**[]SendigClass**](SendigClass.md) |  | [optional] 

## Methods

### NewSendigProduct

`func NewSendigProduct() *SendigProduct`

NewSendigProduct instantiates a new SendigProduct object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendigProductWithDefaults

`func NewSendigProductWithDefaults() *SendigProduct`

NewSendigProductWithDefaults instantiates a new SendigProduct object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *SendigProduct) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SendigProduct) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SendigProduct) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SendigProduct) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SendigProduct) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SendigProduct) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SendigProduct) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SendigProduct) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SendigProduct) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SendigProduct) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SendigProduct) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SendigProduct) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetSource

`func (o *SendigProduct) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *SendigProduct) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *SendigProduct) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *SendigProduct) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetEffectiveDate

`func (o *SendigProduct) GetEffectiveDate() string`

GetEffectiveDate returns the EffectiveDate field if non-nil, zero value otherwise.

### GetEffectiveDateOk

`func (o *SendigProduct) GetEffectiveDateOk() (*string, bool)`

GetEffectiveDateOk returns a tuple with the EffectiveDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveDate

`func (o *SendigProduct) SetEffectiveDate(v string)`

SetEffectiveDate sets EffectiveDate field to given value.

### HasEffectiveDate

`func (o *SendigProduct) HasEffectiveDate() bool`

HasEffectiveDate returns a boolean if a field has been set.

### GetRegistrationStatus

`func (o *SendigProduct) GetRegistrationStatus() string`

GetRegistrationStatus returns the RegistrationStatus field if non-nil, zero value otherwise.

### GetRegistrationStatusOk

`func (o *SendigProduct) GetRegistrationStatusOk() (*string, bool)`

GetRegistrationStatusOk returns a tuple with the RegistrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationStatus

`func (o *SendigProduct) SetRegistrationStatus(v string)`

SetRegistrationStatus sets RegistrationStatus field to given value.

### HasRegistrationStatus

`func (o *SendigProduct) HasRegistrationStatus() bool`

HasRegistrationStatus returns a boolean if a field has been set.

### GetVersion

`func (o *SendigProduct) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *SendigProduct) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *SendigProduct) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *SendigProduct) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetLinks

`func (o *SendigProduct) GetLinks() SendigProductLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SendigProduct) GetLinksOk() (*SendigProductLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SendigProduct) SetLinks(v SendigProductLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SendigProduct) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetClasses

`func (o *SendigProduct) GetClasses() []SendigClass`

GetClasses returns the Classes field if non-nil, zero value otherwise.

### GetClassesOk

`func (o *SendigProduct) GetClassesOk() (*[]SendigClass, bool)`

GetClassesOk returns a tuple with the Classes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClasses

`func (o *SendigProduct) SetClasses(v []SendigClass)`

SetClasses sets Classes field to given value.

### HasClasses

`func (o *SendigProduct) HasClasses() bool`

HasClasses returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


