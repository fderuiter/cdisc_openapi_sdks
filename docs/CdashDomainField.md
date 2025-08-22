# CdashDomainField

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Definition** | Pointer to **string** |  | [optional] 
**DomainSpecific** | Pointer to **string** |  | [optional] 
**QuestionText** | Pointer to **string** |  | [optional] 
**Prompt** | Pointer to **string** |  | [optional] 
**SimpleDatatype** | Pointer to **string** |  | [optional] 
**ImplementationNotes** | Pointer to **string** |  | [optional] 
**MappingInstructions** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**CdashDomainFieldLinks**](CdashDomainFieldLinks.md) |  | [optional] 

## Methods

### NewCdashDomainField

`func NewCdashDomainField() *CdashDomainField`

NewCdashDomainField instantiates a new CdashDomainField object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashDomainFieldWithDefaults

`func NewCdashDomainFieldWithDefaults() *CdashDomainField`

NewCdashDomainFieldWithDefaults instantiates a new CdashDomainField object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *CdashDomainField) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *CdashDomainField) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *CdashDomainField) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *CdashDomainField) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *CdashDomainField) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CdashDomainField) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CdashDomainField) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CdashDomainField) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *CdashDomainField) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *CdashDomainField) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *CdashDomainField) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *CdashDomainField) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDefinition

`func (o *CdashDomainField) GetDefinition() string`

GetDefinition returns the Definition field if non-nil, zero value otherwise.

### GetDefinitionOk

`func (o *CdashDomainField) GetDefinitionOk() (*string, bool)`

GetDefinitionOk returns a tuple with the Definition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefinition

`func (o *CdashDomainField) SetDefinition(v string)`

SetDefinition sets Definition field to given value.

### HasDefinition

`func (o *CdashDomainField) HasDefinition() bool`

HasDefinition returns a boolean if a field has been set.

### GetDomainSpecific

`func (o *CdashDomainField) GetDomainSpecific() string`

GetDomainSpecific returns the DomainSpecific field if non-nil, zero value otherwise.

### GetDomainSpecificOk

`func (o *CdashDomainField) GetDomainSpecificOk() (*string, bool)`

GetDomainSpecificOk returns a tuple with the DomainSpecific field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomainSpecific

`func (o *CdashDomainField) SetDomainSpecific(v string)`

SetDomainSpecific sets DomainSpecific field to given value.

### HasDomainSpecific

`func (o *CdashDomainField) HasDomainSpecific() bool`

HasDomainSpecific returns a boolean if a field has been set.

### GetQuestionText

`func (o *CdashDomainField) GetQuestionText() string`

GetQuestionText returns the QuestionText field if non-nil, zero value otherwise.

### GetQuestionTextOk

`func (o *CdashDomainField) GetQuestionTextOk() (*string, bool)`

GetQuestionTextOk returns a tuple with the QuestionText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestionText

`func (o *CdashDomainField) SetQuestionText(v string)`

SetQuestionText sets QuestionText field to given value.

### HasQuestionText

`func (o *CdashDomainField) HasQuestionText() bool`

HasQuestionText returns a boolean if a field has been set.

### GetPrompt

`func (o *CdashDomainField) GetPrompt() string`

GetPrompt returns the Prompt field if non-nil, zero value otherwise.

### GetPromptOk

`func (o *CdashDomainField) GetPromptOk() (*string, bool)`

GetPromptOk returns a tuple with the Prompt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrompt

`func (o *CdashDomainField) SetPrompt(v string)`

SetPrompt sets Prompt field to given value.

### HasPrompt

`func (o *CdashDomainField) HasPrompt() bool`

HasPrompt returns a boolean if a field has been set.

### GetSimpleDatatype

`func (o *CdashDomainField) GetSimpleDatatype() string`

GetSimpleDatatype returns the SimpleDatatype field if non-nil, zero value otherwise.

### GetSimpleDatatypeOk

`func (o *CdashDomainField) GetSimpleDatatypeOk() (*string, bool)`

GetSimpleDatatypeOk returns a tuple with the SimpleDatatype field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSimpleDatatype

`func (o *CdashDomainField) SetSimpleDatatype(v string)`

SetSimpleDatatype sets SimpleDatatype field to given value.

### HasSimpleDatatype

`func (o *CdashDomainField) HasSimpleDatatype() bool`

HasSimpleDatatype returns a boolean if a field has been set.

### GetImplementationNotes

`func (o *CdashDomainField) GetImplementationNotes() string`

GetImplementationNotes returns the ImplementationNotes field if non-nil, zero value otherwise.

### GetImplementationNotesOk

`func (o *CdashDomainField) GetImplementationNotesOk() (*string, bool)`

GetImplementationNotesOk returns a tuple with the ImplementationNotes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImplementationNotes

`func (o *CdashDomainField) SetImplementationNotes(v string)`

SetImplementationNotes sets ImplementationNotes field to given value.

### HasImplementationNotes

`func (o *CdashDomainField) HasImplementationNotes() bool`

HasImplementationNotes returns a boolean if a field has been set.

### GetMappingInstructions

`func (o *CdashDomainField) GetMappingInstructions() string`

GetMappingInstructions returns the MappingInstructions field if non-nil, zero value otherwise.

### GetMappingInstructionsOk

`func (o *CdashDomainField) GetMappingInstructionsOk() (*string, bool)`

GetMappingInstructionsOk returns a tuple with the MappingInstructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMappingInstructions

`func (o *CdashDomainField) SetMappingInstructions(v string)`

SetMappingInstructions sets MappingInstructions field to given value.

### HasMappingInstructions

`func (o *CdashDomainField) HasMappingInstructions() bool`

HasMappingInstructions returns a boolean if a field has been set.

### GetLinks

`func (o *CdashDomainField) GetLinks() CdashDomainFieldLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CdashDomainField) GetLinksOk() (*CdashDomainFieldLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CdashDomainField) SetLinks(v CdashDomainFieldLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CdashDomainField) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


