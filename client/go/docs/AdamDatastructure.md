# AdamDatastructure

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Class** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**AdamDatastructureLinks**](AdamDatastructureLinks.md) |  | [optional] 
**AnalysisVariableSets** | Pointer to [**[]AdamVarset**](AdamVarset.md) |  | [optional] 

## Methods

### NewAdamDatastructure

`func NewAdamDatastructure() *AdamDatastructure`

NewAdamDatastructure instantiates a new AdamDatastructure object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdamDatastructureWithDefaults

`func NewAdamDatastructureWithDefaults() *AdamDatastructure`

NewAdamDatastructureWithDefaults instantiates a new AdamDatastructure object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *AdamDatastructure) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *AdamDatastructure) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *AdamDatastructure) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *AdamDatastructure) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *AdamDatastructure) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AdamDatastructure) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AdamDatastructure) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AdamDatastructure) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *AdamDatastructure) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *AdamDatastructure) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *AdamDatastructure) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *AdamDatastructure) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *AdamDatastructure) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AdamDatastructure) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AdamDatastructure) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AdamDatastructure) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetClass

`func (o *AdamDatastructure) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *AdamDatastructure) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *AdamDatastructure) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *AdamDatastructure) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetLinks

`func (o *AdamDatastructure) GetLinks() AdamDatastructureLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *AdamDatastructure) GetLinksOk() (*AdamDatastructureLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *AdamDatastructure) SetLinks(v AdamDatastructureLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *AdamDatastructure) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetAnalysisVariableSets

`func (o *AdamDatastructure) GetAnalysisVariableSets() []AdamVarset`

GetAnalysisVariableSets returns the AnalysisVariableSets field if non-nil, zero value otherwise.

### GetAnalysisVariableSetsOk

`func (o *AdamDatastructure) GetAnalysisVariableSetsOk() (*[]AdamVarset, bool)`

GetAnalysisVariableSetsOk returns a tuple with the AnalysisVariableSets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnalysisVariableSets

`func (o *AdamDatastructure) SetAnalysisVariableSets(v []AdamVarset)`

SetAnalysisVariableSets sets AnalysisVariableSets field to given value.

### HasAnalysisVariableSets

`func (o *AdamDatastructure) HasAnalysisVariableSets() bool`

HasAnalysisVariableSets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


