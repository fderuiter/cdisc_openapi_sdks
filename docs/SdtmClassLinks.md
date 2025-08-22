# SdtmClassLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**ParentProduct** | Pointer to [**SdtmProductRef**](SdtmProductRef.md) |  | [optional] 
**ParentClass** | Pointer to [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**Subclasses** | Pointer to [**[]SdtmClassRefSubclass**](SdtmClassRefSubclass.md) |  | [optional] 
**PriorVersion** | Pointer to [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 

## Methods

### NewSdtmClassLinks

`func NewSdtmClassLinks() *SdtmClassLinks`

NewSdtmClassLinks instantiates a new SdtmClassLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSdtmClassLinksWithDefaults

`func NewSdtmClassLinksWithDefaults() *SdtmClassLinks`

NewSdtmClassLinksWithDefaults instantiates a new SdtmClassLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *SdtmClassLinks) GetSelf() SdtmClassRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *SdtmClassLinks) GetSelfOk() (*SdtmClassRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *SdtmClassLinks) SetSelf(v SdtmClassRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *SdtmClassLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetParentProduct

`func (o *SdtmClassLinks) GetParentProduct() SdtmProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *SdtmClassLinks) GetParentProductOk() (*SdtmProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *SdtmClassLinks) SetParentProduct(v SdtmProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *SdtmClassLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentClass

`func (o *SdtmClassLinks) GetParentClass() SdtmClassRef`

GetParentClass returns the ParentClass field if non-nil, zero value otherwise.

### GetParentClassOk

`func (o *SdtmClassLinks) GetParentClassOk() (*SdtmClassRef, bool)`

GetParentClassOk returns a tuple with the ParentClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentClass

`func (o *SdtmClassLinks) SetParentClass(v SdtmClassRef)`

SetParentClass sets ParentClass field to given value.

### HasParentClass

`func (o *SdtmClassLinks) HasParentClass() bool`

HasParentClass returns a boolean if a field has been set.

### GetSubclasses

`func (o *SdtmClassLinks) GetSubclasses() []SdtmClassRefSubclass`

GetSubclasses returns the Subclasses field if non-nil, zero value otherwise.

### GetSubclassesOk

`func (o *SdtmClassLinks) GetSubclassesOk() (*[]SdtmClassRefSubclass, bool)`

GetSubclassesOk returns a tuple with the Subclasses field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubclasses

`func (o *SdtmClassLinks) SetSubclasses(v []SdtmClassRefSubclass)`

SetSubclasses sets Subclasses field to given value.

### HasSubclasses

`func (o *SdtmClassLinks) HasSubclasses() bool`

HasSubclasses returns a boolean if a field has been set.

### GetPriorVersion

`func (o *SdtmClassLinks) GetPriorVersion() SdtmClassRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *SdtmClassLinks) GetPriorVersionOk() (*SdtmClassRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *SdtmClassLinks) SetPriorVersion(v SdtmClassRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *SdtmClassLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


