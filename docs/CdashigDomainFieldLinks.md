# CdashigDomainFieldLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**CdashigDomainFieldRef**](CdashigDomainFieldRef.md) |  | [optional] 
**Codelist** | Pointer to [**[]RootCtCodelistRefElement**](RootCtCodelistRefElement.md) |  | [optional] 
**ParentProduct** | Pointer to [**CdashigProductRef**](CdashigProductRef.md) |  | [optional] 
**ParentDomain** | Pointer to [**CdashigDomainRef**](CdashigDomainRef.md) |  | [optional] 
**RootItem** | Pointer to [**RootCdashigDomainFieldRef**](RootCdashigDomainFieldRef.md) |  | [optional] 
**PriorVersion** | Pointer to [**CdashigDomainFieldRef**](CdashigDomainFieldRef.md) |  | [optional] 
**SdtmClassMappingTargets** | Pointer to [**[]SdtmClassVariableRefTarget**](SdtmClassVariableRefTarget.md) |  | [optional] 
**SdtmigDatasetMappingTargets** | Pointer to [**[]SdtmigDatasetVariableRefTarget**](SdtmigDatasetVariableRefTarget.md) |  | [optional] 

## Methods

### NewCdashigDomainFieldLinks

`func NewCdashigDomainFieldLinks() *CdashigDomainFieldLinks`

NewCdashigDomainFieldLinks instantiates a new CdashigDomainFieldLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashigDomainFieldLinksWithDefaults

`func NewCdashigDomainFieldLinksWithDefaults() *CdashigDomainFieldLinks`

NewCdashigDomainFieldLinksWithDefaults instantiates a new CdashigDomainFieldLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *CdashigDomainFieldLinks) GetSelf() CdashigDomainFieldRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *CdashigDomainFieldLinks) GetSelfOk() (*CdashigDomainFieldRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *CdashigDomainFieldLinks) SetSelf(v CdashigDomainFieldRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *CdashigDomainFieldLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetCodelist

`func (o *CdashigDomainFieldLinks) GetCodelist() []RootCtCodelistRefElement`

GetCodelist returns the Codelist field if non-nil, zero value otherwise.

### GetCodelistOk

`func (o *CdashigDomainFieldLinks) GetCodelistOk() (*[]RootCtCodelistRefElement, bool)`

GetCodelistOk returns a tuple with the Codelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelist

`func (o *CdashigDomainFieldLinks) SetCodelist(v []RootCtCodelistRefElement)`

SetCodelist sets Codelist field to given value.

### HasCodelist

`func (o *CdashigDomainFieldLinks) HasCodelist() bool`

HasCodelist returns a boolean if a field has been set.

### GetParentProduct

`func (o *CdashigDomainFieldLinks) GetParentProduct() CdashigProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *CdashigDomainFieldLinks) GetParentProductOk() (*CdashigProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *CdashigDomainFieldLinks) SetParentProduct(v CdashigProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *CdashigDomainFieldLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentDomain

`func (o *CdashigDomainFieldLinks) GetParentDomain() CdashigDomainRef`

GetParentDomain returns the ParentDomain field if non-nil, zero value otherwise.

### GetParentDomainOk

`func (o *CdashigDomainFieldLinks) GetParentDomainOk() (*CdashigDomainRef, bool)`

GetParentDomainOk returns a tuple with the ParentDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentDomain

`func (o *CdashigDomainFieldLinks) SetParentDomain(v CdashigDomainRef)`

SetParentDomain sets ParentDomain field to given value.

### HasParentDomain

`func (o *CdashigDomainFieldLinks) HasParentDomain() bool`

HasParentDomain returns a boolean if a field has been set.

### GetRootItem

`func (o *CdashigDomainFieldLinks) GetRootItem() RootCdashigDomainFieldRef`

GetRootItem returns the RootItem field if non-nil, zero value otherwise.

### GetRootItemOk

`func (o *CdashigDomainFieldLinks) GetRootItemOk() (*RootCdashigDomainFieldRef, bool)`

GetRootItemOk returns a tuple with the RootItem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootItem

`func (o *CdashigDomainFieldLinks) SetRootItem(v RootCdashigDomainFieldRef)`

SetRootItem sets RootItem field to given value.

### HasRootItem

`func (o *CdashigDomainFieldLinks) HasRootItem() bool`

HasRootItem returns a boolean if a field has been set.

### GetPriorVersion

`func (o *CdashigDomainFieldLinks) GetPriorVersion() CdashigDomainFieldRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *CdashigDomainFieldLinks) GetPriorVersionOk() (*CdashigDomainFieldRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *CdashigDomainFieldLinks) SetPriorVersion(v CdashigDomainFieldRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *CdashigDomainFieldLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.

### GetSdtmClassMappingTargets

`func (o *CdashigDomainFieldLinks) GetSdtmClassMappingTargets() []SdtmClassVariableRefTarget`

GetSdtmClassMappingTargets returns the SdtmClassMappingTargets field if non-nil, zero value otherwise.

### GetSdtmClassMappingTargetsOk

`func (o *CdashigDomainFieldLinks) GetSdtmClassMappingTargetsOk() (*[]SdtmClassVariableRefTarget, bool)`

GetSdtmClassMappingTargetsOk returns a tuple with the SdtmClassMappingTargets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSdtmClassMappingTargets

`func (o *CdashigDomainFieldLinks) SetSdtmClassMappingTargets(v []SdtmClassVariableRefTarget)`

SetSdtmClassMappingTargets sets SdtmClassMappingTargets field to given value.

### HasSdtmClassMappingTargets

`func (o *CdashigDomainFieldLinks) HasSdtmClassMappingTargets() bool`

HasSdtmClassMappingTargets returns a boolean if a field has been set.

### GetSdtmigDatasetMappingTargets

`func (o *CdashigDomainFieldLinks) GetSdtmigDatasetMappingTargets() []SdtmigDatasetVariableRefTarget`

GetSdtmigDatasetMappingTargets returns the SdtmigDatasetMappingTargets field if non-nil, zero value otherwise.

### GetSdtmigDatasetMappingTargetsOk

`func (o *CdashigDomainFieldLinks) GetSdtmigDatasetMappingTargetsOk() (*[]SdtmigDatasetVariableRefTarget, bool)`

GetSdtmigDatasetMappingTargetsOk returns a tuple with the SdtmigDatasetMappingTargets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSdtmigDatasetMappingTargets

`func (o *CdashigDomainFieldLinks) SetSdtmigDatasetMappingTargets(v []SdtmigDatasetVariableRefTarget)`

SetSdtmigDatasetMappingTargets sets SdtmigDatasetMappingTargets field to given value.

### HasSdtmigDatasetMappingTargets

`func (o *CdashigDomainFieldLinks) HasSdtmigDatasetMappingTargets() bool`

HasSdtmigDatasetMappingTargets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


