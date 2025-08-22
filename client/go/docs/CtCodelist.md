# CtCodelist

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConceptId** | Pointer to **string** |  | [optional] 
**Extensible** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**SubmissionValue** | Pointer to **string** |  | [optional] 
**Definition** | Pointer to **string** |  | [optional] 
**PreferredTerm** | Pointer to **string** |  | [optional] 
**Synonyms** | Pointer to **[]string** |  | [optional] 
**Links** | Pointer to [**CtCodelistLinks**](CtCodelistLinks.md) |  | [optional] 
**Terms** | Pointer to [**[]CtPackageTerm**](CtPackageTerm.md) |  | [optional] 

## Methods

### NewCtCodelist

`func NewCtCodelist() *CtCodelist`

NewCtCodelist instantiates a new CtCodelist object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCtCodelistWithDefaults

`func NewCtCodelistWithDefaults() *CtCodelist`

NewCtCodelistWithDefaults instantiates a new CtCodelist object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetConceptId

`func (o *CtCodelist) GetConceptId() string`

GetConceptId returns the ConceptId field if non-nil, zero value otherwise.

### GetConceptIdOk

`func (o *CtCodelist) GetConceptIdOk() (*string, bool)`

GetConceptIdOk returns a tuple with the ConceptId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConceptId

`func (o *CtCodelist) SetConceptId(v string)`

SetConceptId sets ConceptId field to given value.

### HasConceptId

`func (o *CtCodelist) HasConceptId() bool`

HasConceptId returns a boolean if a field has been set.

### GetExtensible

`func (o *CtCodelist) GetExtensible() string`

GetExtensible returns the Extensible field if non-nil, zero value otherwise.

### GetExtensibleOk

`func (o *CtCodelist) GetExtensibleOk() (*string, bool)`

GetExtensibleOk returns a tuple with the Extensible field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtensible

`func (o *CtCodelist) SetExtensible(v string)`

SetExtensible sets Extensible field to given value.

### HasExtensible

`func (o *CtCodelist) HasExtensible() bool`

HasExtensible returns a boolean if a field has been set.

### GetName

`func (o *CtCodelist) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CtCodelist) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CtCodelist) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CtCodelist) HasName() bool`

HasName returns a boolean if a field has been set.

### GetSubmissionValue

`func (o *CtCodelist) GetSubmissionValue() string`

GetSubmissionValue returns the SubmissionValue field if non-nil, zero value otherwise.

### GetSubmissionValueOk

`func (o *CtCodelist) GetSubmissionValueOk() (*string, bool)`

GetSubmissionValueOk returns a tuple with the SubmissionValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubmissionValue

`func (o *CtCodelist) SetSubmissionValue(v string)`

SetSubmissionValue sets SubmissionValue field to given value.

### HasSubmissionValue

`func (o *CtCodelist) HasSubmissionValue() bool`

HasSubmissionValue returns a boolean if a field has been set.

### GetDefinition

`func (o *CtCodelist) GetDefinition() string`

GetDefinition returns the Definition field if non-nil, zero value otherwise.

### GetDefinitionOk

`func (o *CtCodelist) GetDefinitionOk() (*string, bool)`

GetDefinitionOk returns a tuple with the Definition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefinition

`func (o *CtCodelist) SetDefinition(v string)`

SetDefinition sets Definition field to given value.

### HasDefinition

`func (o *CtCodelist) HasDefinition() bool`

HasDefinition returns a boolean if a field has been set.

### GetPreferredTerm

`func (o *CtCodelist) GetPreferredTerm() string`

GetPreferredTerm returns the PreferredTerm field if non-nil, zero value otherwise.

### GetPreferredTermOk

`func (o *CtCodelist) GetPreferredTermOk() (*string, bool)`

GetPreferredTermOk returns a tuple with the PreferredTerm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreferredTerm

`func (o *CtCodelist) SetPreferredTerm(v string)`

SetPreferredTerm sets PreferredTerm field to given value.

### HasPreferredTerm

`func (o *CtCodelist) HasPreferredTerm() bool`

HasPreferredTerm returns a boolean if a field has been set.

### GetSynonyms

`func (o *CtCodelist) GetSynonyms() []string`

GetSynonyms returns the Synonyms field if non-nil, zero value otherwise.

### GetSynonymsOk

`func (o *CtCodelist) GetSynonymsOk() (*[]string, bool)`

GetSynonymsOk returns a tuple with the Synonyms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSynonyms

`func (o *CtCodelist) SetSynonyms(v []string)`

SetSynonyms sets Synonyms field to given value.

### HasSynonyms

`func (o *CtCodelist) HasSynonyms() bool`

HasSynonyms returns a boolean if a field has been set.

### GetLinks

`func (o *CtCodelist) GetLinks() CtCodelistLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CtCodelist) GetLinksOk() (*CtCodelistLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CtCodelist) SetLinks(v CtCodelistLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CtCodelist) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetTerms

`func (o *CtCodelist) GetTerms() []CtPackageTerm`

GetTerms returns the Terms field if non-nil, zero value otherwise.

### GetTermsOk

`func (o *CtCodelist) GetTermsOk() (*[]CtPackageTerm, bool)`

GetTermsOk returns a tuple with the Terms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTerms

`func (o *CtCodelist) SetTerms(v []CtPackageTerm)`

SetTerms sets Terms field to given value.

### HasTerms

`func (o *CtCodelist) HasTerms() bool`

HasTerms returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


