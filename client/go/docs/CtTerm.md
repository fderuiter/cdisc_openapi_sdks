# CtTerm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConceptId** | Pointer to **string** |  | [optional] 
**SubmissionValue** | Pointer to **string** |  | [optional] 
**Definition** | Pointer to **string** |  | [optional] 
**PreferredTerm** | Pointer to **string** |  | [optional] 
**Synonyms** | Pointer to **[]string** |  | [optional] 
**Links** | Pointer to [**CtTermLinks**](CtTermLinks.md) |  | [optional] 

## Methods

### NewCtTerm

`func NewCtTerm() *CtTerm`

NewCtTerm instantiates a new CtTerm object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCtTermWithDefaults

`func NewCtTermWithDefaults() *CtTerm`

NewCtTermWithDefaults instantiates a new CtTerm object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetConceptId

`func (o *CtTerm) GetConceptId() string`

GetConceptId returns the ConceptId field if non-nil, zero value otherwise.

### GetConceptIdOk

`func (o *CtTerm) GetConceptIdOk() (*string, bool)`

GetConceptIdOk returns a tuple with the ConceptId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConceptId

`func (o *CtTerm) SetConceptId(v string)`

SetConceptId sets ConceptId field to given value.

### HasConceptId

`func (o *CtTerm) HasConceptId() bool`

HasConceptId returns a boolean if a field has been set.

### GetSubmissionValue

`func (o *CtTerm) GetSubmissionValue() string`

GetSubmissionValue returns the SubmissionValue field if non-nil, zero value otherwise.

### GetSubmissionValueOk

`func (o *CtTerm) GetSubmissionValueOk() (*string, bool)`

GetSubmissionValueOk returns a tuple with the SubmissionValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubmissionValue

`func (o *CtTerm) SetSubmissionValue(v string)`

SetSubmissionValue sets SubmissionValue field to given value.

### HasSubmissionValue

`func (o *CtTerm) HasSubmissionValue() bool`

HasSubmissionValue returns a boolean if a field has been set.

### GetDefinition

`func (o *CtTerm) GetDefinition() string`

GetDefinition returns the Definition field if non-nil, zero value otherwise.

### GetDefinitionOk

`func (o *CtTerm) GetDefinitionOk() (*string, bool)`

GetDefinitionOk returns a tuple with the Definition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefinition

`func (o *CtTerm) SetDefinition(v string)`

SetDefinition sets Definition field to given value.

### HasDefinition

`func (o *CtTerm) HasDefinition() bool`

HasDefinition returns a boolean if a field has been set.

### GetPreferredTerm

`func (o *CtTerm) GetPreferredTerm() string`

GetPreferredTerm returns the PreferredTerm field if non-nil, zero value otherwise.

### GetPreferredTermOk

`func (o *CtTerm) GetPreferredTermOk() (*string, bool)`

GetPreferredTermOk returns a tuple with the PreferredTerm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreferredTerm

`func (o *CtTerm) SetPreferredTerm(v string)`

SetPreferredTerm sets PreferredTerm field to given value.

### HasPreferredTerm

`func (o *CtTerm) HasPreferredTerm() bool`

HasPreferredTerm returns a boolean if a field has been set.

### GetSynonyms

`func (o *CtTerm) GetSynonyms() []string`

GetSynonyms returns the Synonyms field if non-nil, zero value otherwise.

### GetSynonymsOk

`func (o *CtTerm) GetSynonymsOk() (*[]string, bool)`

GetSynonymsOk returns a tuple with the Synonyms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSynonyms

`func (o *CtTerm) SetSynonyms(v []string)`

SetSynonyms sets Synonyms field to given value.

### HasSynonyms

`func (o *CtTerm) HasSynonyms() bool`

HasSynonyms returns a boolean if a field has been set.

### GetLinks

`func (o *CtTerm) GetLinks() CtTermLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CtTerm) GetLinksOk() (*CtTermLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CtTerm) SetLinks(v CtTermLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CtTerm) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


