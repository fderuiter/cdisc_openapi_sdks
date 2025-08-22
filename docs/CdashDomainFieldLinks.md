# CdashDomainFieldLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**CdashDomainFieldRef**](CdashDomainFieldRef.md) |  | [optional] 
**Codelist** | Pointer to [**[]RootCtCodelistRefElement**](RootCtCodelistRefElement.md) |  | [optional] 
**ParentProduct** | Pointer to [**CdashProductRef**](CdashProductRef.md) |  | [optional] 
**ParentClass** | Pointer to [**CdashClassRef**](CdashClassRef.md) |  | [optional] 
**ParentDomain** | Pointer to [**CdashDomainRef**](CdashDomainRef.md) |  | [optional] 
**RootItem** | Pointer to [**RootCdashDomainFieldRef**](RootCdashDomainFieldRef.md) |  | [optional] 
**PriorVersion** | Pointer to [**CdashDomainFieldRef**](CdashDomainFieldRef.md) |  | [optional] 
**SdtmDatasetMappingTargets** | Pointer to [**[]SdtmDatasetVariableRefTarget**](SdtmDatasetVariableRefTarget.md) |  | [optional] 
**SdtmigDatasetMappingTargets** | Pointer to [**[]SdtmigDatasetVariableRefTarget**](SdtmigDatasetVariableRefTarget.md) |  | [optional] 

## Methods

### NewCdashDomainFieldLinks

`func NewCdashDomainFieldLinks() *CdashDomainFieldLinks`

NewCdashDomainFieldLinks instantiates a new CdashDomainFieldLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCdashDomainFieldLinksWithDefaults

`func NewCdashDomainFieldLinksWithDefaults() *CdashDomainFieldLinks`

NewCdashDomainFieldLinksWithDefaults instantiates a new CdashDomainFieldLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *CdashDomainFieldLinks) GetSelf() CdashDomainFieldRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *CdashDomainFieldLinks) GetSelfOk() (*CdashDomainFieldRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *CdashDomainFieldLinks) SetSelf(v CdashDomainFieldRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *CdashDomainFieldLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetCodelist

`func (o *CdashDomainFieldLinks) GetCodelist() []RootCtCodelistRefElement`

GetCodelist returns the Codelist field if non-nil, zero value otherwise.

### GetCodelistOk

`func (o *CdashDomainFieldLinks) GetCodelistOk() (*[]RootCtCodelistRefElement, bool)`

GetCodelistOk returns a tuple with the Codelist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodelist

`func (o *CdashDomainFieldLinks) SetCodelist(v []RootCtCodelistRefElement)`

SetCodelist sets Codelist field to given value.

### HasCodelist

`func (o *CdashDomainFieldLinks) HasCodelist() bool`

HasCodelist returns a boolean if a field has been set.

### GetParentProduct

`func (o *CdashDomainFieldLinks) GetParentProduct() CdashProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *CdashDomainFieldLinks) GetParentProductOk() (*CdashProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *CdashDomainFieldLinks) SetParentProduct(v CdashProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *CdashDomainFieldLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentClass

`func (o *CdashDomainFieldLinks) GetParentClass() CdashClassRef`

GetParentClass returns the ParentClass field if non-nil, zero value otherwise.

### GetParentClassOk

`func (o *CdashDomainFieldLinks) GetParentClassOk() (*CdashClassRef, bool)`

GetParentClassOk returns a tuple with the ParentClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentClass

`func (o *CdashDomainFieldLinks) SetParentClass(v CdashClassRef)`

SetParentClass sets ParentClass field to given value.

### HasParentClass

`func (o *CdashDomainFieldLinks) HasParentClass() bool`

HasParentClass returns a boolean if a field has been set.

### GetParentDomain

`func (o *CdashDomainFieldLinks) GetParentDomain() CdashDomainRef`

GetParentDomain returns the ParentDomain field if non-nil, zero value otherwise.

### GetParentDomainOk

`func (o *CdashDomainFieldLinks) GetParentDomainOk() (*CdashDomainRef, bool)`

GetParentDomainOk returns a tuple with the ParentDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentDomain

`func (o *CdashDomainFieldLinks) SetParentDomain(v CdashDomainRef)`

SetParentDomain sets ParentDomain field to given value.

### HasParentDomain

`func (o *CdashDomainFieldLinks) HasParentDomain() bool`

HasParentDomain returns a boolean if a field has been set.

### GetRootItem

`func (o *CdashDomainFieldLinks) GetRootItem() RootCdashDomainFieldRef`

GetRootItem returns the RootItem field if non-nil, zero value otherwise.

### GetRootItemOk

`func (o *CdashDomainFieldLinks) GetRootItemOk() (*RootCdashDomainFieldRef, bool)`

GetRootItemOk returns a tuple with the RootItem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootItem

`func (o *CdashDomainFieldLinks) SetRootItem(v RootCdashDomainFieldRef)`

SetRootItem sets RootItem field to given value.

### HasRootItem

`func (o *CdashDomainFieldLinks) HasRootItem() bool`

HasRootItem returns a boolean if a field has been set.

### GetPriorVersion

`func (o *CdashDomainFieldLinks) GetPriorVersion() CdashDomainFieldRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *CdashDomainFieldLinks) GetPriorVersionOk() (*CdashDomainFieldRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *CdashDomainFieldLinks) SetPriorVersion(v CdashDomainFieldRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *CdashDomainFieldLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.

### GetSdtmDatasetMappingTargets

`func (o *CdashDomainFieldLinks) GetSdtmDatasetMappingTargets() []SdtmDatasetVariableRefTarget`

GetSdtmDatasetMappingTargets returns the SdtmDatasetMappingTargets field if non-nil, zero value otherwise.

### GetSdtmDatasetMappingTargetsOk

`func (o *CdashDomainFieldLinks) GetSdtmDatasetMappingTargetsOk() (*[]SdtmDatasetVariableRefTarget, bool)`

GetSdtmDatasetMappingTargetsOk returns a tuple with the SdtmDatasetMappingTargets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSdtmDatasetMappingTargets

`func (o *CdashDomainFieldLinks) SetSdtmDatasetMappingTargets(v []SdtmDatasetVariableRefTarget)`

SetSdtmDatasetMappingTargets sets SdtmDatasetMappingTargets field to given value.

### HasSdtmDatasetMappingTargets

`func (o *CdashDomainFieldLinks) HasSdtmDatasetMappingTargets() bool`

HasSdtmDatasetMappingTargets returns a boolean if a field has been set.

### GetSdtmigDatasetMappingTargets

`func (o *CdashDomainFieldLinks) GetSdtmigDatasetMappingTargets() []SdtmigDatasetVariableRefTarget`

GetSdtmigDatasetMappingTargets returns the SdtmigDatasetMappingTargets field if non-nil, zero value otherwise.

### GetSdtmigDatasetMappingTargetsOk

`func (o *CdashDomainFieldLinks) GetSdtmigDatasetMappingTargetsOk() (*[]SdtmigDatasetVariableRefTarget, bool)`

GetSdtmigDatasetMappingTargetsOk returns a tuple with the SdtmigDatasetMappingTargets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSdtmigDatasetMappingTargets

`func (o *CdashDomainFieldLinks) SetSdtmigDatasetMappingTargets(v []SdtmigDatasetVariableRefTarget)`

SetSdtmigDatasetMappingTargets sets SdtmigDatasetMappingTargets field to given value.

### HasSdtmigDatasetMappingTargets

`func (o *CdashDomainFieldLinks) HasSdtmigDatasetMappingTargets() bool`

HasSdtmigDatasetMappingTargets returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


