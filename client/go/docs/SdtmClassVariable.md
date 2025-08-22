# SdtmClassVariable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Role** | Pointer to **string** |  | [optional] 
**RoleDescription** | Pointer to **string** |  | [optional] 
**SimpleDatatype** | Pointer to **string** |  | [optional] 
**DescribedValueDomain** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**SdtmClassVariableLinks**](SdtmClassVariableLinks.md) |  | [optional] 

## Methods

### NewSdtmClassVariable

`func NewSdtmClassVariable() *SdtmClassVariable`

NewSdtmClassVariable instantiates a new SdtmClassVariable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmClassVariableWithDefaults

`func NewSdtmClassVariableWithDefaults() *SdtmClassVariable`

NewSdtmClassVariableWithDefaults instantiates a new SdtmClassVariable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SdtmClassVariable) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SdtmClassVariable) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SdtmClassVariable) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SdtmClassVariable) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SdtmClassVariable) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmClassVariable) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmClassVariable) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmClassVariable) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmClassVariable) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmClassVariable) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmClassVariable) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmClassVariable) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmClassVariable) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmClassVariable) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmClassVariable) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmClassVariable) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetRole

`func (o *SdtmClassVariable) GetRole() string`

GetRole returns the Role field if non-nil, zero value otherwise.

### GetRoleOk

`func (o *SdtmClassVariable) GetRoleOk() (*string, bool)`

GetRoleOk returns a tuple with the Role field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRole

`func (o *SdtmClassVariable) SetRole(v string)`

SetRole sets Role field to given value.

### HasRole

`func (o *SdtmClassVariable) HasRole() bool`

HasRole returns a boolean if a field has been set.

### GetRoleDescription

`func (o *SdtmClassVariable) GetRoleDescription() string`

GetRoleDescription returns the RoleDescription field if non-nil, zero value otherwise.

### GetRoleDescriptionOk

`func (o *SdtmClassVariable) GetRoleDescriptionOk() (*string, bool)`

GetRoleDescriptionOk returns a tuple with the RoleDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleDescription

`func (o *SdtmClassVariable) SetRoleDescription(v string)`

SetRoleDescription sets RoleDescription field to given value.

### HasRoleDescription

`func (o *SdtmClassVariable) HasRoleDescription() bool`

HasRoleDescription returns a boolean if a field has been set.

### GetSimpleDatatype

`func (o *SdtmClassVariable) GetSimpleDatatype() string`

GetSimpleDatatype returns the SimpleDatatype field if non-nil, zero value otherwise.

### GetSimpleDatatypeOk

`func (o *SdtmClassVariable) GetSimpleDatatypeOk() (*string, bool)`

GetSimpleDatatypeOk returns a tuple with the SimpleDatatype field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSimpleDatatype

`func (o *SdtmClassVariable) SetSimpleDatatype(v string)`

SetSimpleDatatype sets SimpleDatatype field to given value.

### HasSimpleDatatype

`func (o *SdtmClassVariable) HasSimpleDatatype() bool`

HasSimpleDatatype returns a boolean if a field has been set.

### GetDescribedValueDomain

`func (o *SdtmClassVariable) GetDescribedValueDomain() string`

GetDescribedValueDomain returns the DescribedValueDomain field if non-nil, zero value otherwise.

### GetDescribedValueDomainOk

`func (o *SdtmClassVariable) GetDescribedValueDomainOk() (*string, bool)`

GetDescribedValueDomainOk returns a tuple with the DescribedValueDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescribedValueDomain

`func (o *SdtmClassVariable) SetDescribedValueDomain(v string)`

SetDescribedValueDomain sets DescribedValueDomain field to given value.

### HasDescribedValueDomain

`func (o *SdtmClassVariable) HasDescribedValueDomain() bool`

HasDescribedValueDomain returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmClassVariable) GetLinks() SdtmClassVariableLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmClassVariable) GetLinksOk() (*SdtmClassVariableLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmClassVariable) SetLinks(v SdtmClassVariableLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmClassVariable) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


