# CdashClass

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**CdashClassLinks**](CdashClassLinks.md) |  | [optional] 
**CdashModelFields** | Pointer to [**[]CdashClassField**](CdashClassField.md) |  | [optional] 

## Methods

### NewCdashClass

`func NewCdashClass() *CdashClass`

NewCdashClass instantiates a new CdashClass object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashClassWithDefaults

`func NewCdashClassWithDefaults() *CdashClass`

NewCdashClassWithDefaults instantiates a new CdashClass object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *CdashClass) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *CdashClass) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *CdashClass) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *CdashClass) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *CdashClass) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CdashClass) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CdashClass) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CdashClass) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *CdashClass) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *CdashClass) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *CdashClass) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *CdashClass) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *CdashClass) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *CdashClass) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *CdashClass) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *CdashClass) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetLinks

`func (o *CdashClass) GetLinks() CdashClassLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CdashClass) GetLinksOk() (*CdashClassLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CdashClass) SetLinks(v CdashClassLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CdashClass) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetCdashModelFields

`func (o *CdashClass) GetCdashModelFields() []CdashClassField`

GetCdashModelFields returns the CdashModelFields field if non-nil, zero value otherwise.

### GetCdashModelFieldsOk

`func (o *CdashClass) GetCdashModelFieldsOk() (*[]CdashClassField, bool)`

GetCdashModelFieldsOk returns a tuple with the CdashModelFields field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCdashModelFields

`func (o *CdashClass) SetCdashModelFields(v []CdashClassField)`

SetCdashModelFields sets CdashModelFields field to given value.

### HasCdashModelFields

`func (o *CdashClass) HasCdashModelFields() bool`

HasCdashModelFields returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


