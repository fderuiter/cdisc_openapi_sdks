# SendigDatasetVariable

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
**Links** | Pointer to [**SendigDatasetVariableLinks**](SendigDatasetVariableLinks.md) |  | [optional] 

## Methods

### NewSendigDatasetVariable

`func NewSendigDatasetVariable() *SendigDatasetVariable`

NewSendigDatasetVariable instantiates a new SendigDatasetVariable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendigDatasetVariableWithDefaults

`func NewSendigDatasetVariableWithDefaults() *SendigDatasetVariable`

NewSendigDatasetVariableWithDefaults instantiates a new SendigDatasetVariable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *SendigDatasetVariable) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *SendigDatasetVariable) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *SendigDatasetVariable) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *SendigDatasetVariable) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *SendigDatasetVariable) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SendigDatasetVariable) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SendigDatasetVariable) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SendigDatasetVariable) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *SendigDatasetVariable) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *SendigDatasetVariable) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *SendigDatasetVariable) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *SendigDatasetVariable) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *SendigDatasetVariable) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SendigDatasetVariable) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SendigDatasetVariable) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SendigDatasetVariable) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetRole

`func (o *SendigDatasetVariable) GetRole() string`

GetRole returns the Role field if non-nil, zero value otherwise.

### GetRoleOk

`func (o *SendigDatasetVariable) GetRoleOk() (*string, bool)`

GetRoleOk returns a tuple with the Role field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRole

`func (o *SendigDatasetVariable) SetRole(v string)`

SetRole sets Role field to given value.

### HasRole

`func (o *SendigDatasetVariable) HasRole() bool`

HasRole returns a boolean if a field has been set.

### GetSimpleDatatype

`func (o *SendigDatasetVariable) GetSimpleDatatype() string`

GetSimpleDatatype returns the SimpleDatatype field if non-nil, zero value otherwise.

### GetSimpleDatatypeOk

`func (o *SendigDatasetVariable) GetSimpleDatatypeOk() (*string, bool)`

GetSimpleDatatypeOk returns a tuple with the SimpleDatatype field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSimpleDatatype

`func (o *SendigDatasetVariable) SetSimpleDatatype(v string)`

SetSimpleDatatype sets SimpleDatatype field to given value.

### HasSimpleDatatype

`func (o *SendigDatasetVariable) HasSimpleDatatype() bool`

HasSimpleDatatype returns a boolean if a field has been set.

### GetCore

`func (o *SendigDatasetVariable) GetCore() string`

GetCore returns the Core field if non-nil, zero value otherwise.

### GetCoreOk

`func (o *SendigDatasetVariable) GetCoreOk() (*string, bool)`

GetCoreOk returns a tuple with the Core field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCore

`func (o *SendigDatasetVariable) SetCore(v string)`

SetCore sets Core field to given value.

### HasCore

`func (o *SendigDatasetVariable) HasCore() bool`

HasCore returns a boolean if a field has been set.

### GetDescribedValueDomain

`func (o *SendigDatasetVariable) GetDescribedValueDomain() string`

GetDescribedValueDomain returns the DescribedValueDomain field if non-nil, zero value otherwise.

### GetDescribedValueDomainOk

`func (o *SendigDatasetVariable) GetDescribedValueDomainOk() (*string, bool)`

GetDescribedValueDomainOk returns a tuple with the DescribedValueDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescribedValueDomain

`func (o *SendigDatasetVariable) SetDescribedValueDomain(v string)`

SetDescribedValueDomain sets DescribedValueDomain field to given value.

### HasDescribedValueDomain

`func (o *SendigDatasetVariable) HasDescribedValueDomain() bool`

HasDescribedValueDomain returns a boolean if a field has been set.

### GetValueList

`func (o *SendigDatasetVariable) GetValueList() []string`

GetValueList returns the ValueList field if non-nil, zero value otherwise.

### GetValueListOk

`func (o *SendigDatasetVariable) GetValueListOk() (*[]string, bool)`

GetValueListOk returns a tuple with the ValueList field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueList

`func (o *SendigDatasetVariable) SetValueList(v []string)`

SetValueList sets ValueList field to given value.

### HasValueList

`func (o *SendigDatasetVariable) HasValueList() bool`

HasValueList returns a boolean if a field has been set.

### GetLinks

`func (o *SendigDatasetVariable) GetLinks() SendigDatasetVariableLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *SendigDatasetVariable) GetLinksOk() (*SendigDatasetVariableLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *SendigDatasetVariable) SetLinks(v SendigDatasetVariableLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *SendigDatasetVariable) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


