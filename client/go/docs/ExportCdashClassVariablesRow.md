# ExportCdashClassVariablesRow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | Pointer to **string** |  | [optional] 
**Class** | Pointer to **string** |  | [optional] 
**Domain** | Pointer to **string** |  | [optional] 
**VariableOrder** | Pointer to **string** |  | [optional] 
**CDASHVariable** | Pointer to **string** |  | [optional] 
**CDASHVariableLabel** | Pointer to **string** |  | [optional] 
**DRAFTCDASHDefinition** | Pointer to **string** |  | [optional] 
**DomainSpecific** | Pointer to **string** |  | [optional] 
**QuestionText** | Pointer to **string** |  | [optional] 
**Prompt** | Pointer to **string** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**SDTMTarget** | Pointer to **[]string** |  | [optional] 
**MappingInstructions** | Pointer to **string** |  | [optional] 
**ControlledTerminologyCodelistName** | Pointer to **string** |  | [optional] 
**ImplementationNotes** | Pointer to **string** |  | [optional] 

## Methods

### NewExportCdashClassVariablesRow

`func NewExportCdashClassVariablesRow() *ExportCdashClassVariablesRow`

NewExportCdashClassVariablesRow instantiates a new ExportCdashClassVariablesRow object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExportCdashClassVariablesRowWithDefaults

`func NewExportCdashClassVariablesRowWithDefaults() *ExportCdashClassVariablesRow`

NewExportCdashClassVariablesRowWithDefaults instantiates a new ExportCdashClassVariablesRow object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVersion

`func (o *ExportCdashClassVariablesRow) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *ExportCdashClassVariablesRow) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *ExportCdashClassVariablesRow) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *ExportCdashClassVariablesRow) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetClass

`func (o *ExportCdashClassVariablesRow) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *ExportCdashClassVariablesRow) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *ExportCdashClassVariablesRow) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *ExportCdashClassVariablesRow) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetDomain

`func (o *ExportCdashClassVariablesRow) GetDomain() string`

GetDomain returns the Domain field if non-nil, zero value otherwise.

### GetDomainOk

`func (o *ExportCdashClassVariablesRow) GetDomainOk() (*string, bool)`

GetDomainOk returns a tuple with the Domain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomain

`func (o *ExportCdashClassVariablesRow) SetDomain(v string)`

SetDomain sets Domain field to given value.

### HasDomain

`func (o *ExportCdashClassVariablesRow) HasDomain() bool`

HasDomain returns a boolean if a field has been set.

### GetVariableOrder

`func (o *ExportCdashClassVariablesRow) GetVariableOrder() string`

GetVariableOrder returns the VariableOrder field if non-nil, zero value otherwise.

### GetVariableOrderOk

`func (o *ExportCdashClassVariablesRow) GetVariableOrderOk() (*string, bool)`

GetVariableOrderOk returns a tuple with the VariableOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariableOrder

`func (o *ExportCdashClassVariablesRow) SetVariableOrder(v string)`

SetVariableOrder sets VariableOrder field to given value.

### HasVariableOrder

`func (o *ExportCdashClassVariablesRow) HasVariableOrder() bool`

HasVariableOrder returns a boolean if a field has been set.

### GetCDASHVariable

`func (o *ExportCdashClassVariablesRow) GetCDASHVariable() string`

GetCDASHVariable returns the CDASHVariable field if non-nil, zero value otherwise.

### GetCDASHVariableOk

`func (o *ExportCdashClassVariablesRow) GetCDASHVariableOk() (*string, bool)`

GetCDASHVariableOk returns a tuple with the CDASHVariable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCDASHVariable

`func (o *ExportCdashClassVariablesRow) SetCDASHVariable(v string)`

SetCDASHVariable sets CDASHVariable field to given value.

### HasCDASHVariable

`func (o *ExportCdashClassVariablesRow) HasCDASHVariable() bool`

HasCDASHVariable returns a boolean if a field has been set.

### GetCDASHVariableLabel

`func (o *ExportCdashClassVariablesRow) GetCDASHVariableLabel() string`

GetCDASHVariableLabel returns the CDASHVariableLabel field if non-nil, zero value otherwise.

### GetCDASHVariableLabelOk

`func (o *ExportCdashClassVariablesRow) GetCDASHVariableLabelOk() (*string, bool)`

GetCDASHVariableLabelOk returns a tuple with the CDASHVariableLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCDASHVariableLabel

`func (o *ExportCdashClassVariablesRow) SetCDASHVariableLabel(v string)`

SetCDASHVariableLabel sets CDASHVariableLabel field to given value.

### HasCDASHVariableLabel

`func (o *ExportCdashClassVariablesRow) HasCDASHVariableLabel() bool`

HasCDASHVariableLabel returns a boolean if a field has been set.

### GetDRAFTCDASHDefinition

`func (o *ExportCdashClassVariablesRow) GetDRAFTCDASHDefinition() string`

GetDRAFTCDASHDefinition returns the DRAFTCDASHDefinition field if non-nil, zero value otherwise.

### GetDRAFTCDASHDefinitionOk

`func (o *ExportCdashClassVariablesRow) GetDRAFTCDASHDefinitionOk() (*string, bool)`

GetDRAFTCDASHDefinitionOk returns a tuple with the DRAFTCDASHDefinition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDRAFTCDASHDefinition

`func (o *ExportCdashClassVariablesRow) SetDRAFTCDASHDefinition(v string)`

SetDRAFTCDASHDefinition sets DRAFTCDASHDefinition field to given value.

### HasDRAFTCDASHDefinition

`func (o *ExportCdashClassVariablesRow) HasDRAFTCDASHDefinition() bool`

HasDRAFTCDASHDefinition returns a boolean if a field has been set.

### GetDomainSpecific

`func (o *ExportCdashClassVariablesRow) GetDomainSpecific() string`

GetDomainSpecific returns the DomainSpecific field if non-nil, zero value otherwise.

### GetDomainSpecificOk

`func (o *ExportCdashClassVariablesRow) GetDomainSpecificOk() (*string, bool)`

GetDomainSpecificOk returns a tuple with the DomainSpecific field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomainSpecific

`func (o *ExportCdashClassVariablesRow) SetDomainSpecific(v string)`

SetDomainSpecific sets DomainSpecific field to given value.

### HasDomainSpecific

`func (o *ExportCdashClassVariablesRow) HasDomainSpecific() bool`

HasDomainSpecific returns a boolean if a field has been set.

### GetQuestionText

`func (o *ExportCdashClassVariablesRow) GetQuestionText() string`

GetQuestionText returns the QuestionText field if non-nil, zero value otherwise.

### GetQuestionTextOk

`func (o *ExportCdashClassVariablesRow) GetQuestionTextOk() (*string, bool)`

GetQuestionTextOk returns a tuple with the QuestionText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestionText

`func (o *ExportCdashClassVariablesRow) SetQuestionText(v string)`

SetQuestionText sets QuestionText field to given value.

### HasQuestionText

`func (o *ExportCdashClassVariablesRow) HasQuestionText() bool`

HasQuestionText returns a boolean if a field has been set.

### GetPrompt

`func (o *ExportCdashClassVariablesRow) GetPrompt() string`

GetPrompt returns the Prompt field if non-nil, zero value otherwise.

### GetPromptOk

`func (o *ExportCdashClassVariablesRow) GetPromptOk() (*string, bool)`

GetPromptOk returns a tuple with the Prompt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrompt

`func (o *ExportCdashClassVariablesRow) SetPrompt(v string)`

SetPrompt sets Prompt field to given value.

### HasPrompt

`func (o *ExportCdashClassVariablesRow) HasPrompt() bool`

HasPrompt returns a boolean if a field has been set.

### GetType

`func (o *ExportCdashClassVariablesRow) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ExportCdashClassVariablesRow) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ExportCdashClassVariablesRow) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ExportCdashClassVariablesRow) HasType() bool`

HasType returns a boolean if a field has been set.

### GetSDTMTarget

`func (o *ExportCdashClassVariablesRow) GetSDTMTarget() []string`

GetSDTMTarget returns the SDTMTarget field if non-nil, zero value otherwise.

### GetSDTMTargetOk

`func (o *ExportCdashClassVariablesRow) GetSDTMTargetOk() (*[]string, bool)`

GetSDTMTargetOk returns a tuple with the SDTMTarget field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSDTMTarget

`func (o *ExportCdashClassVariablesRow) SetSDTMTarget(v []string)`

SetSDTMTarget sets SDTMTarget field to given value.

### HasSDTMTarget

`func (o *ExportCdashClassVariablesRow) HasSDTMTarget() bool`

HasSDTMTarget returns a boolean if a field has been set.

### GetMappingInstructions

`func (o *ExportCdashClassVariablesRow) GetMappingInstructions() string`

GetMappingInstructions returns the MappingInstructions field if non-nil, zero value otherwise.

### GetMappingInstructionsOk

`func (o *ExportCdashClassVariablesRow) GetMappingInstructionsOk() (*string, bool)`

GetMappingInstructionsOk returns a tuple with the MappingInstructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMappingInstructions

`func (o *ExportCdashClassVariablesRow) SetMappingInstructions(v string)`

SetMappingInstructions sets MappingInstructions field to given value.

### HasMappingInstructions

`func (o *ExportCdashClassVariablesRow) HasMappingInstructions() bool`

HasMappingInstructions returns a boolean if a field has been set.

### GetControlledTerminologyCodelistName

`func (o *ExportCdashClassVariablesRow) GetControlledTerminologyCodelistName() string`

GetControlledTerminologyCodelistName returns the ControlledTerminologyCodelistName field if non-nil, zero value otherwise.

### GetControlledTerminologyCodelistNameOk

`func (o *ExportCdashClassVariablesRow) GetControlledTerminologyCodelistNameOk() (*string, bool)`

GetControlledTerminologyCodelistNameOk returns a tuple with the ControlledTerminologyCodelistName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetControlledTerminologyCodelistName

`func (o *ExportCdashClassVariablesRow) SetControlledTerminologyCodelistName(v string)`

SetControlledTerminologyCodelistName sets ControlledTerminologyCodelistName field to given value.

### HasControlledTerminologyCodelistName

`func (o *ExportCdashClassVariablesRow) HasControlledTerminologyCodelistName() bool`

HasControlledTerminologyCodelistName returns a boolean if a field has been set.

### GetImplementationNotes

`func (o *ExportCdashClassVariablesRow) GetImplementationNotes() string`

GetImplementationNotes returns the ImplementationNotes field if non-nil, zero value otherwise.

### GetImplementationNotesOk

`func (o *ExportCdashClassVariablesRow) GetImplementationNotesOk() (*string, bool)`

GetImplementationNotesOk returns a tuple with the ImplementationNotes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImplementationNotes

`func (o *ExportCdashClassVariablesRow) SetImplementationNotes(v string)`

SetImplementationNotes sets ImplementationNotes field to given value.

### HasImplementationNotes

`func (o *ExportCdashClassVariablesRow) HasImplementationNotes() bool`

HasImplementationNotes returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


