# CdashigClass

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ordinal** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**CdashigClassLinks**](CdashigClassLinks.md) |  | [optional] 
**Domains** | Pointer to [**[]CdashigDomain**](CdashigDomain.md) |  | [optional] 
**Scenarios** | Pointer to [**[]CdashigScenario**](CdashigScenario.md) |  | [optional] 

## Methods

### NewCdashigClass

`func NewCdashigClass() *CdashigClass`

NewCdashigClass instantiates a new CdashigClass object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashigClassWithDefaults

`func NewCdashigClassWithDefaults() *CdashigClass`

NewCdashigClassWithDefaults instantiates a new CdashigClass object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrdinal

`func (o *CdashigClass) GetOrdinal() string`

GetOrdinal returns the Ordinal field if non-nil, zero value otherwise.

### GetOrdinalOk

`func (o *CdashigClass) GetOrdinalOk() (*string, bool)`

GetOrdinalOk returns a tuple with the Ordinal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrdinal

`func (o *CdashigClass) SetOrdinal(v string)`

SetOrdinal sets Ordinal field to given value.

### HasOrdinal

`func (o *CdashigClass) HasOrdinal() bool`

HasOrdinal returns a boolean if a field has been set.

### GetName

`func (o *CdashigClass) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CdashigClass) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CdashigClass) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CdashigClass) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *CdashigClass) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *CdashigClass) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *CdashigClass) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *CdashigClass) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *CdashigClass) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *CdashigClass) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *CdashigClass) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *CdashigClass) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetLinks

`func (o *CdashigClass) GetLinks() CdashigClassLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *CdashigClass) GetLinksOk() (*CdashigClassLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *CdashigClass) SetLinks(v CdashigClassLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *CdashigClass) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDomains

`func (o *CdashigClass) GetDomains() []CdashigDomain`

GetDomains returns the Domains field if non-nil, zero value otherwise.

### GetDomainsOk

`func (o *CdashigClass) GetDomainsOk() (*[]CdashigDomain, bool)`

GetDomainsOk returns a tuple with the Domains field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomains

`func (o *CdashigClass) SetDomains(v []CdashigDomain)`

SetDomains sets Domains field to given value.

### HasDomains

`func (o *CdashigClass) HasDomains() bool`

HasDomains returns a boolean if a field has been set.

### GetScenarios

`func (o *CdashigClass) GetScenarios() []CdashigScenario`

GetScenarios returns the Scenarios field if non-nil, zero value otherwise.

### GetScenariosOk

`func (o *CdashigClass) GetScenariosOk() (*[]CdashigScenario, bool)`

GetScenariosOk returns a tuple with the Scenarios field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScenarios

`func (o *CdashigClass) SetScenarios(v []CdashigScenario)`

SetScenarios sets Scenarios field to given value.

### HasScenarios

`func (o *CdashigClass) HasScenarios() bool`

HasScenarios returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


