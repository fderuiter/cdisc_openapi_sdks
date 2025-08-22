# ExportCtCodelist

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | Pointer to **string** |  | [optional] 
**CodelistCode** | Pointer to **string** |  | [optional] 
**CodelistExtensibleYesNo** | Pointer to **string** |  | [optional] 
**CodelistName** | Pointer to **string** |  | [optional] 
**CDISCSubmissionValue** | Pointer to **string** |  | [optional] 
**CDISCSynonymS** | Pointer to **[]string** |  | [optional] 
**CDISCDefinition** | Pointer to **string** |  | [optional] 
**NCIPreferredTerm** | Pointer to **string** |  | [optional] 
**StandardAndDate** | Pointer to **string** |  | [optional] 
**** | Pointer to [**[]ExportCtTerm**](ExportCtTerm.md) |  | [optional] 

## Methods

### NewExportCtCodelist

`func NewExportCtCodelist() *ExportCtCodelist`

NewExportCtCodelist instantiates a new ExportCtCodelist object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExportCtCodelistWithDefaults

`func NewExportCtCodelistWithDefaults() *ExportCtCodelist`

NewExportCtCodelistWithDefaults instantiates a new ExportCtCodelist object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCode

`func (o *ExportCtCodelist) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *ExportCtCodelist) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *ExportCtCodelist) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *ExportCtCodelist) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetCodelistCode

`func (o *ExportCtCodelist) GetCodelistCode() string`

GetCodelistCode returns the CodelistCode field if non-nil, zero value otherwise.

### GetCodelistCodeOk

`func (o *ExportCtCodelist) GetCodelistCodeOk() (*string, bool)`

GetCodelistCodeOk returns a tuple with the CodelistCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelistCode

`func (o *ExportCtCodelist) SetCodelistCode(v string)`

SetCodelistCode sets CodelistCode field to given value.

### HasCodelistCode

`func (o *ExportCtCodelist) HasCodelistCode() bool`

HasCodelistCode returns a boolean if a field has been set.

### GetCodelistExtensibleYesNo

`func (o *ExportCtCodelist) GetCodelistExtensibleYesNo() string`

GetCodelistExtensibleYesNo returns the CodelistExtensibleYesNo field if non-nil, zero value otherwise.

### GetCodelistExtensibleYesNoOk

`func (o *ExportCtCodelist) GetCodelistExtensibleYesNoOk() (*string, bool)`

GetCodelistExtensibleYesNoOk returns a tuple with the CodelistExtensibleYesNo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelistExtensibleYesNo

`func (o *ExportCtCodelist) SetCodelistExtensibleYesNo(v string)`

SetCodelistExtensibleYesNo sets CodelistExtensibleYesNo field to given value.

### HasCodelistExtensibleYesNo

`func (o *ExportCtCodelist) HasCodelistExtensibleYesNo() bool`

HasCodelistExtensibleYesNo returns a boolean if a field has been set.

### GetCodelistName

`func (o *ExportCtCodelist) GetCodelistName() string`

GetCodelistName returns the CodelistName field if non-nil, zero value otherwise.

### GetCodelistNameOk

`func (o *ExportCtCodelist) GetCodelistNameOk() (*string, bool)`

GetCodelistNameOk returns a tuple with the CodelistName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelistName

`func (o *ExportCtCodelist) SetCodelistName(v string)`

SetCodelistName sets CodelistName field to given value.

### HasCodelistName

`func (o *ExportCtCodelist) HasCodelistName() bool`

HasCodelistName returns a boolean if a field has been set.

### GetCDISCSubmissionValue

`func (o *ExportCtCodelist) GetCDISCSubmissionValue() string`

GetCDISCSubmissionValue returns the CDISCSubmissionValue field if non-nil, zero value otherwise.

### GetCDISCSubmissionValueOk

`func (o *ExportCtCodelist) GetCDISCSubmissionValueOk() (*string, bool)`

GetCDISCSubmissionValueOk returns a tuple with the CDISCSubmissionValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCDISCSubmissionValue

`func (o *ExportCtCodelist) SetCDISCSubmissionValue(v string)`

SetCDISCSubmissionValue sets CDISCSubmissionValue field to given value.

### HasCDISCSubmissionValue

`func (o *ExportCtCodelist) HasCDISCSubmissionValue() bool`

HasCDISCSubmissionValue returns a boolean if a field has been set.

### GetCDISCSynonymS

`func (o *ExportCtCodelist) GetCDISCSynonymS() []string`

GetCDISCSynonymS returns the CDISCSynonymS field if non-nil, zero value otherwise.

### GetCDISCSynonymSOk

`func (o *ExportCtCodelist) GetCDISCSynonymSOk() (*[]string, bool)`

GetCDISCSynonymSOk returns a tuple with the CDISCSynonymS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCDISCSynonymS

`func (o *ExportCtCodelist) SetCDISCSynonymS(v []string)`

SetCDISCSynonymS sets CDISCSynonymS field to given value.

### HasCDISCSynonymS

`func (o *ExportCtCodelist) HasCDISCSynonymS() bool`

HasCDISCSynonymS returns a boolean if a field has been set.

### GetCDISCDefinition

`func (o *ExportCtCodelist) GetCDISCDefinition() string`

GetCDISCDefinition returns the CDISCDefinition field if non-nil, zero value otherwise.

### GetCDISCDefinitionOk

`func (o *ExportCtCodelist) GetCDISCDefinitionOk() (*string, bool)`

GetCDISCDefinitionOk returns a tuple with the CDISCDefinition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCDISCDefinition

`func (o *ExportCtCodelist) SetCDISCDefinition(v string)`

SetCDISCDefinition sets CDISCDefinition field to given value.

### HasCDISCDefinition

`func (o *ExportCtCodelist) HasCDISCDefinition() bool`

HasCDISCDefinition returns a boolean if a field has been set.

### GetNCIPreferredTerm

`func (o *ExportCtCodelist) GetNCIPreferredTerm() string`

GetNCIPreferredTerm returns the NCIPreferredTerm field if non-nil, zero value otherwise.

### GetNCIPreferredTermOk

`func (o *ExportCtCodelist) GetNCIPreferredTermOk() (*string, bool)`

GetNCIPreferredTermOk returns a tuple with the NCIPreferredTerm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNCIPreferredTerm

`func (o *ExportCtCodelist) SetNCIPreferredTerm(v string)`

SetNCIPreferredTerm sets NCIPreferredTerm field to given value.

### HasNCIPreferredTerm

`func (o *ExportCtCodelist) HasNCIPreferredTerm() bool`

HasNCIPreferredTerm returns a boolean if a field has been set.

### GetStandardAndDate

`func (o *ExportCtCodelist) GetStandardAndDate() string`

GetStandardAndDate returns the StandardAndDate field if non-nil, zero value otherwise.

### GetStandardAndDateOk

`func (o *ExportCtCodelist) GetStandardAndDateOk() (*string, bool)`

GetStandardAndDateOk returns a tuple with the StandardAndDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStandardAndDate

`func (o *ExportCtCodelist) SetStandardAndDate(v string)`

SetStandardAndDate sets StandardAndDate field to given value.

### HasStandardAndDate

`func (o *ExportCtCodelist) HasStandardAndDate() bool`

HasStandardAndDate returns a boolean if a field has been set.

### Get

`func (o *ExportCtCodelist) Get() []ExportCtTerm`

Get returns the  field if non-nil, zero value otherwise.

### GetOk

`func (o *ExportCtCodelist) GetOk() (*[]ExportCtTerm, bool)`

GetOk returns a tuple with the  field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### Set

`func (o *ExportCtCodelist) Set(v []ExportCtTerm)`

Set sets  field to given value.

### Has

`func (o *ExportCtCodelist) Has() bool`

Has returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


