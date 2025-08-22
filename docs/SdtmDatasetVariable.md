# SdtmDatasetVariable

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
**Links** | Pointer to [**SdtmDatasetVariableLinks**](SdtmDatasetVariableLinks.md) |  | [optional] 

## Methods

### NewSdtmDatasetVariable

`func NewSdtmDatasetVariable() *SdtmDatasetVariable`

NewSdtmDatasetVariable instantiates a new SdtmDatasetVariable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmDatasetVariableWithDefaults

`func NewSdtmDatasetVariableWithDefaults() *SdtmDatasetVariable`

NewSdtmDatasetVariableWithDefaults instantiates a new SdtmDatasetVariable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SdtmDatasetVariable) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SdtmDatasetVariable) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SdtmDatasetVariable) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SdtmDatasetVariable) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SdtmDatasetVariable) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmDatasetVariable) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmDatasetVariable) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmDatasetVariable) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmDatasetVariable) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmDatasetVariable) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmDatasetVariable) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmDatasetVariable) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmDatasetVariable) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmDatasetVariable) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmDatasetVariable) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmDatasetVariable) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetRole

`func (o *SdtmDatasetVariable) GetRole() string`

GetRole returns the Role field if non-nil, zero value otherwise.

### GetRoleOk

`func (o *SdtmDatasetVariable) GetRoleOk() (*string, bool)`

GetRoleOk returns a tuple with the Role field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRole

`func (o *SdtmDatasetVariable) SetRole(v string)`

SetRole sets Role field to given value.

### HasRole

`func (o *SdtmDatasetVariable) HasRole() bool`

HasRole returns a boolean if a field has been set.

### GetRoleDescription

`func (o *SdtmDatasetVariable) GetRoleDescription() string`

GetRoleDescription returns the RoleDescription field if non-nil, zero value otherwise.

### GetRoleDescriptionOk

`func (o *SdtmDatasetVariable) GetRoleDescriptionOk() (*string, bool)`

GetRoleDescriptionOk returns a tuple with the RoleDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleDescription

`func (o *SdtmDatasetVariable) SetRoleDescription(v string)`

SetRoleDescription sets RoleDescription field to given value.

### HasRoleDescription

`func (o *SdtmDatasetVariable) HasRoleDescription() bool`

HasRoleDescription returns a boolean if a field has been set.

### GetSimpleDatatype

`func (o *SdtmDatasetVariable) GetSimpleDatatype() string`

GetSimpleDatatype returns the SimpleDatatype field if non-nil, zero value otherwise.

### GetSimpleDatatypeOk

`func (o *SdtmDatasetVariable) GetSimpleDatatypeOk() (*string, bool)`

GetSimpleDatatypeOk returns a tuple with the SimpleDatatype field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSimpleDatatype

`func (o *SdtmDatasetVariable) SetSimpleDatatype(v string)`

SetSimpleDatatype sets SimpleDatatype field to given value.

### HasSimpleDatatype

`func (o *SdtmDatasetVariable) HasSimpleDatatype() bool`

HasSimpleDatatype returns a boolean if a field has been set.

### GetDescribedValueDomain

`func (o *SdtmDatasetVariable) GetDescribedValueDomain() string`

GetDescribedValueDomain returns the DescribedValueDomain field if non-nil, zero value otherwise.

### GetDescribedValueDomainOk

`func (o *SdtmDatasetVariable) GetDescribedValueDomainOk() (*string, bool)`

GetDescribedValueDomainOk returns a tuple with the DescribedValueDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescribedValueDomain

`func (o *SdtmDatasetVariable) SetDescribedValueDomain(v string)`

SetDescribedValueDomain sets DescribedValueDomain field to given value.

### HasDescribedValueDomain

`func (o *SdtmDatasetVariable) HasDescribedValueDomain() bool`

HasDescribedValueDomain returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmDatasetVariable) GetLinks() SdtmDatasetVariableLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmDatasetVariable) GetLinksOk() (*SdtmDatasetVariableLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmDatasetVariable) SetLinks(v SdtmDatasetVariableLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmDatasetVariable) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


