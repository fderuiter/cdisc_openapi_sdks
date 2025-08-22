# AdamVarset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**AdamVarsetLinks**](AdamVarsetLinks.md) |  | [optional] 
**AnalysisVariables** | Pointer to [**[]AdamVariable**](AdamVariable.md) |  | [optional] 

## Methods

### NewAdamVarset

`func NewAdamVarset() *AdamVarset`

NewAdamVarset instantiates a new AdamVarset object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdamVarsetWithDefaults

`func NewAdamVarsetWithDefaults() *AdamVarset`

NewAdamVarsetWithDefaults instantiates a new AdamVarset object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *AdamVarset) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *AdamVarset) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *AdamVarset) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *AdamVarset) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *AdamVarset) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AdamVarset) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AdamVarset) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AdamVarset) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *AdamVarset) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *AdamVarset) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *AdamVarset) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *AdamVarset) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *AdamVarset) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AdamVarset) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AdamVarset) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AdamVarset) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetLinks

`func (o *AdamVarset) GetLinks() AdamVarsetLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *AdamVarset) GetLinksOk() (*AdamVarsetLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *AdamVarset) SetLinks(v AdamVarsetLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *AdamVarset) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetAnalysisVariables

`func (o *AdamVarset) GetAnalysisVariables() []AdamVariable`

GetAnalysisVariables returns the AnalysisVariables field if non-nil, zero value otherwise.

### GetAnalysisVariablesOk

`func (o *AdamVarset) GetAnalysisVariablesOk() (*[]AdamVariable, bool)`

GetAnalysisVariablesOk returns a tuple with the AnalysisVariables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnalysisVariables

`func (o *AdamVarset) SetAnalysisVariables(v []AdamVariable)`

SetAnalysisVariables sets AnalysisVariables field to given value.

### HasAnalysisVariables

`func (o *AdamVarset) HasAnalysisVariables() bool`

HasAnalysisVariables returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


