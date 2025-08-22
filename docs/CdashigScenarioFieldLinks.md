# CdashigScenarioFieldLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**CdashigScenarioFieldRef**](CdashigScenarioFieldRef.md) |  | [optional] 
**Codelist** | Pointer to [**[]RootCtCodelistRefElement**](RootCtCodelistRefElement.md) |  | [optional] 
**ParentProduct** | Pointer to [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**ParentDomain** | Pointer to [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] 
**ParentScenario** | Pointer to [**CdashigScenarioRef**](CdashigScenarioRef.md) |  | [optional] 
**RootItem** | Pointer to [**RootCdashigScenarioFieldRef**](RootCdashigScenarioFieldRef.md) |  | [optional] 
**PriorVersion** | Pointer to [**CdashigScenarioFieldRef**](CdashigScenarioFieldRef.md) |  | [optional] 
**SdtmigDatasetMappingTargets** | Pointer to [**[]SdtmigDatasetVariableRefTarget**](SdtmigDatasetVariableRefTarget.md) |  | [optional] 

## Methods

### NewCdashigScenarioFieldLinks

`func NewCdashigScenarioFieldLinks() *CdashigScenarioFieldLinks`

NewCdashigScenarioFieldLinks instantiates a new CdashigScenarioFieldLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashigScenarioFieldLinksWithDefaults

`func NewCdashigScenarioFieldLinksWithDefaults() *CdashigScenarioFieldLinks`

NewCdashigScenarioFieldLinksWithDefaults instantiates a new CdashigScenarioFieldLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *CdashigScenarioFieldLinks) GetSelf() CdashigScenarioFieldRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *CdashigScenarioFieldLinks) GetSelfOk() (*CdashigScenarioFieldRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *CdashigScenarioFieldLinks) SetSelf(v CdashigScenarioFieldRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *CdashigScenarioFieldLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetCodelist

`func (o *CdashigScenarioFieldLinks) GetCodelist() []RootCtCodelistRefElement`

GetCodelist returns the Codelist field if non-nil, zero value otherwise.

### GetCodelistOk

`func (o *CdashigScenarioFieldLinks) GetCodelistOk() (*[]RootCtCodelistRefElement, bool)`

GetCodelistOk returns a tuple with the Codelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelist

`func (o *CdashigScenarioFieldLinks) SetCodelist(v []RootCtCodelistRefElement)`

SetCodelist sets Codelist field to given value.

### HasCodelist

`func (o *CdashigScenarioFieldLinks) HasCodelist() bool`

HasCodelist returns a boolean if a field has been set.

### GetParentProduct

`func (o *CdashigScenarioFieldLinks) GetParentProduct() CdashigProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *CdashigScenarioFieldLinks) GetParentProductOk() (*CdashigProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *CdashigScenarioFieldLinks) SetParentProduct(v CdashigProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *CdashigScenarioFieldLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentDomain

`func (o *CdashigScenarioFieldLinks) GetParentDomain() CdashigDomainRef`

GetParentDomain returns the ParentDomain field if non-nil, zero value otherwise.

### GetParentDomainOk

`func (o *CdashigScenarioFieldLinks) GetParentDomainOk() (*CdashigDomainRef, bool)`

GetParentDomainOk returns a tuple with the ParentDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentDomain

`func (o *CdashigScenarioFieldLinks) SetParentDomain(v CdashigDomainRef)`

SetParentDomain sets ParentDomain field to given value.

### HasParentDomain

`func (o *CdashigScenarioFieldLinks) HasParentDomain() bool`

HasParentDomain returns a boolean if a field has been set.

### GetParentScenario

`func (o *CdashigScenarioFieldLinks) GetParentScenario() CdashigScenarioRef`

GetParentScenario returns the ParentScenario field if non-nil, zero value otherwise.

### GetParentScenarioOk

`func (o *CdashigScenarioFieldLinks) GetParentScenarioOk() (*CdashigScenarioRef, bool)`

GetParentScenarioOk returns a tuple with the ParentScenario field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentScenario

`func (o *CdashigScenarioFieldLinks) SetParentScenario(v CdashigScenarioRef)`

SetParentScenario sets ParentScenario field to given value.

### HasParentScenario

`func (o *CdashigScenarioFieldLinks) HasParentScenario() bool`

HasParentScenario returns a boolean if a field has been set.

### GetRootItem

`func (o *CdashigScenarioFieldLinks) GetRootItem() RootCdashigScenarioFieldRef`

GetRootItem returns the RootItem field if non-nil, zero value otherwise.

### GetRootItemOk

`func (o *CdashigScenarioFieldLinks) GetRootItemOk() (*RootCdashigScenarioFieldRef, bool)`

GetRootItemOk returns a tuple with the RootItem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootItem

`func (o *CdashigScenarioFieldLinks) SetRootItem(v RootCdashigScenarioFieldRef)`

SetRootItem sets RootItem field to given value.

### HasRootItem

`func (o *CdashigScenarioFieldLinks) HasRootItem() bool`

HasRootItem returns a boolean if a field has been set.

### GetPriorVersion

`func (o *CdashigScenarioFieldLinks) GetPriorVersion() CdashigScenarioFieldRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *CdashigScenarioFieldLinks) GetPriorVersionOk() (*CdashigScenarioFieldRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *CdashigScenarioFieldLinks) SetPriorVersion(v CdashigScenarioFieldRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *CdashigScenarioFieldLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.

### GetSdtmigDatasetMappingTargets

`func (o *CdashigScenarioFieldLinks) GetSdtmigDatasetMappingTargets() []SdtmigDatasetVariableRefTarget`

GetSdtmigDatasetMappingTargets returns the SdtmigDatasetMappingTargets field if non-nil, zero value otherwise.

### GetSdtmigDatasetMappingTargetsOk

`func (o *CdashigScenarioFieldLinks) GetSdtmigDatasetMappingTargetsOk() (*[]SdtmigDatasetVariableRefTarget, bool)`

GetSdtmigDatasetMappingTargetsOk returns a tuple with the SdtmigDatasetMappingTargets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSdtmigDatasetMappingTargets

`func (o *CdashigScenarioFieldLinks) SetSdtmigDatasetMappingTargets(v []SdtmigDatasetVariableRefTarget)`

SetSdtmigDatasetMappingTargets sets SdtmigDatasetMappingTargets field to given value.

### HasSdtmigDatasetMappingTargets

`func (o *CdashigScenarioFieldLinks) HasSdtmigDatasetMappingTargets() bool`

HasSdtmigDatasetMappingTargets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


