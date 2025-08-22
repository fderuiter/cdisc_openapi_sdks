# CdashClassField

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Definition** | Pointer to **string** |  | [optional] 
**QuestionText** | Pointer to **string** |  | [optional] 
**Prompt** | Pointer to **string** |  | [optional] 
**SimpleDatatype** | Pointer to **string** |  | [optional] 
**ImplementationNotes** | Pointer to **string** |  | [optional] 
**MappingInstructions** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**CdashClassFieldLinks**](CdashClassFieldLinks.md) |  | [optional] 

## Methods

### NewCdashClassField

`func NewCdashClassField() *CdashClassField`

NewCdashClassField instantiates a new CdashClassField object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashClassFieldWithDefaults

`func NewCdashClassFieldWithDefaults() *CdashClassField`

NewCdashClassFieldWithDefaults instantiates a new CdashClassField object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *CdashClassField) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *CdashClassField) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *CdashClassField) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *CdashClassField) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *CdashClassField) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CdashClassField) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CdashClassField) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CdashClassField) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *CdashClassField) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *CdashClassField) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *CdashClassField) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *CdashClassField) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDefinition

`func (o *CdashClassField) GetDefinition() string`

GetDefinition returns the Definition field if non-nil, zero value otherwise.

### GetDefinitionOk

`func (o *CdashClassField) GetDefinitionOk() (*string, bool)`

GetDefinitionOk returns a tuple with the Definition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefinition

`func (o *CdashClassField) SetDefinition(v string)`

SetDefinition sets Definition field to given value.

### HasDefinition

`func (o *CdashClassField) HasDefinition() bool`

HasDefinition returns a boolean if a field has been set.

### GetQuestionText

`func (o *CdashClassField) GetQuestionText() string`

GetQuestionText returns the QuestionText field if non-nil, zero value otherwise.

### GetQuestionTextOk

`func (o *CdashClassField) GetQuestionTextOk() (*string, bool)`

GetQuestionTextOk returns a tuple with the QuestionText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestionText

`func (o *CdashClassField) SetQuestionText(v string)`

SetQuestionText sets QuestionText field to given value.

### HasQuestionText

`func (o *CdashClassField) HasQuestionText() bool`

HasQuestionText returns a boolean if a field has been set.

### GetPrompt

`func (o *CdashClassField) GetPrompt() string`

GetPrompt returns the Prompt field if non-nil, zero value otherwise.

### GetPromptOk

`func (o *CdashClassField) GetPromptOk() (*string, bool)`

GetPromptOk returns a tuple with the Prompt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrompt

`func (o *CdashClassField) SetPrompt(v string)`

SetPrompt sets Prompt field to given value.

### HasPrompt

`func (o *CdashClassField) HasPrompt() bool`

HasPrompt returns a boolean if a field has been set.

### GetSimpleDatatype

`func (o *CdashClassField) GetSimpleDatatype() string`

GetSimpleDatatype returns the SimpleDatatype field if non-nil, zero value otherwise.

### GetSimpleDatatypeOk

`func (o *CdashClassField) GetSimpleDatatypeOk() (*string, bool)`

GetSimpleDatatypeOk returns a tuple with the SimpleDatatype field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSimpleDatatype

`func (o *CdashClassField) SetSimpleDatatype(v string)`

SetSimpleDatatype sets SimpleDatatype field to given value.

### HasSimpleDatatype

`func (o *CdashClassField) HasSimpleDatatype() bool`

HasSimpleDatatype returns a boolean if a field has been set.

### GetImplementationNotes

`func (o *CdashClassField) GetImplementationNotes() string`

GetImplementationNotes returns the ImplementationNotes field if non-nil, zero value otherwise.

### GetImplementationNotesOk

`func (o *CdashClassField) GetImplementationNotesOk() (*string, bool)`

GetImplementationNotesOk returns a tuple with the ImplementationNotes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImplementationNotes

`func (o *CdashClassField) SetImplementationNotes(v string)`

SetImplementationNotes sets ImplementationNotes field to given value.

### HasImplementationNotes

`func (o *CdashClassField) HasImplementationNotes() bool`

HasImplementationNotes returns a boolean if a field has been set.

### GetMappingInstructions

`func (o *CdashClassField) GetMappingInstructions() string`

GetMappingInstructions returns the MappingInstructions field if non-nil, zero value otherwise.

### GetMappingInstructionsOk

`func (o *CdashClassField) GetMappingInstructionsOk() (*string, bool)`

GetMappingInstructionsOk returns a tuple with the MappingInstructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMappingInstructions

`func (o *CdashClassField) SetMappingInstructions(v string)`

SetMappingInstructions sets MappingInstructions field to given value.

### HasMappingInstructions

`func (o *CdashClassField) HasMappingInstructions() bool`

HasMappingInstructions returns a boolean if a field has been set.

### GetLinks

`func (o *CdashClassField) GetLinks() CdashClassFieldLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CdashClassField) GetLinksOk() (*CdashClassFieldLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CdashClassField) SetLinks(v CdashClassFieldLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CdashClassField) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


