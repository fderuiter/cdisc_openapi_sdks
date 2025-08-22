# SdtmigDatasetVariable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Role** | Pointer to **string** |  | [optional] 
**SimpleDatatype** | Pointer to **string** |  | [optional] 
**Core** | Pointer to **string** |  | [optional] 
**DescribedValueDomain** | Pointer to **string** |  | [optional] 
**ValueList** | Pointer to **[]string** |  | [optional] 
**Links** | Pointer to [**SdtmigDatasetVariableLinks**](SdtmigDatasetVariableLinks.md) |  | [optional] 

## Methods

### NewSdtmigDatasetVariable

`func NewSdtmigDatasetVariable() *SdtmigDatasetVariable`

NewSdtmigDatasetVariable instantiates a new SdtmigDatasetVariable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmigDatasetVariableWithDefaults

`func NewSdtmigDatasetVariableWithDefaults() *SdtmigDatasetVariable`

NewSdtmigDatasetVariableWithDefaults instantiates a new SdtmigDatasetVariable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SdtmigDatasetVariable) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SdtmigDatasetVariable) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SdtmigDatasetVariable) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SdtmigDatasetVariable) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SdtmigDatasetVariable) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SdtmigDatasetVariable) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SdtmigDatasetVariable) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SdtmigDatasetVariable) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SdtmigDatasetVariable) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SdtmigDatasetVariable) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SdtmigDatasetVariable) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SdtmigDatasetVariable) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SdtmigDatasetVariable) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SdtmigDatasetVariable) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SdtmigDatasetVariable) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SdtmigDatasetVariable) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetRole

`func (o *SdtmigDatasetVariable) GetRole() string`

GetRole returns the Role field if non-nil, zero value otherwise.

### GetRoleOk

`func (o *SdtmigDatasetVariable) GetRoleOk() (*string, bool)`

GetRoleOk returns a tuple with the Role field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRole

`func (o *SdtmigDatasetVariable) SetRole(v string)`

SetRole sets Role field to given value.

### HasRole

`func (o *SdtmigDatasetVariable) HasRole() bool`

HasRole returns a boolean if a field has been set.

### GetSimpleDatatype

`func (o *SdtmigDatasetVariable) GetSimpleDatatype() string`

GetSimpleDatatype returns the SimpleDatatype field if non-nil, zero value otherwise.

### GetSimpleDatatypeOk

`func (o *SdtmigDatasetVariable) GetSimpleDatatypeOk() (*string, bool)`

GetSimpleDatatypeOk returns a tuple with the SimpleDatatype field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSimpleDatatype

`func (o *SdtmigDatasetVariable) SetSimpleDatatype(v string)`

SetSimpleDatatype sets SimpleDatatype field to given value.

### HasSimpleDatatype

`func (o *SdtmigDatasetVariable) HasSimpleDatatype() bool`

HasSimpleDatatype returns a boolean if a field has been set.

### GetCore

`func (o *SdtmigDatasetVariable) GetCore() string`

GetCore returns the Core field if non-nil, zero value otherwise.

### GetCoreOk

`func (o *SdtmigDatasetVariable) GetCoreOk() (*string, bool)`

GetCoreOk returns a tuple with the Core field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCore

`func (o *SdtmigDatasetVariable) SetCore(v string)`

SetCore sets Core field to given value.

### HasCore

`func (o *SdtmigDatasetVariable) HasCore() bool`

HasCore returns a boolean if a field has been set.

### GetDescribedValueDomain

`func (o *SdtmigDatasetVariable) GetDescribedValueDomain() string`

GetDescribedValueDomain returns the DescribedValueDomain field if non-nil, zero value otherwise.

### GetDescribedValueDomainOk

`func (o *SdtmigDatasetVariable) GetDescribedValueDomainOk() (*string, bool)`

GetDescribedValueDomainOk returns a tuple with the DescribedValueDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescribedValueDomain

`func (o *SdtmigDatasetVariable) SetDescribedValueDomain(v string)`

SetDescribedValueDomain sets DescribedValueDomain field to given value.

### HasDescribedValueDomain

`func (o *SdtmigDatasetVariable) HasDescribedValueDomain() bool`

HasDescribedValueDomain returns a boolean if a field has been set.

### GetValueList

`func (o *SdtmigDatasetVariable) GetValueList() []string`

GetValueList returns the ValueList field if non-nil, zero value otherwise.

### GetValueListOk

`func (o *SdtmigDatasetVariable) GetValueListOk() (*[]string, bool)`

GetValueListOk returns a tuple with the ValueList field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueList

`func (o *SdtmigDatasetVariable) SetValueList(v []string)`

SetValueList sets ValueList field to given value.

### HasValueList

`func (o *SdtmigDatasetVariable) HasValueList() bool`

HasValueList returns a boolean if a field has been set.

### GetLinks

`func (o *SdtmigDatasetVariable) GetLinks() SdtmigDatasetVariableLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SdtmigDatasetVariable) GetLinksOk() (*SdtmigDatasetVariableLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SdtmigDatasetVariable) SetLinks(v SdtmigDatasetVariableLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SdtmigDatasetVariable) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


