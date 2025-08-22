# SendigClassLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**SendigClassRef**](SendigClassRef.md) |  | [optional] 
**ModelClass** | Pointer to [**SdtmClassRef**](SdtmClassRef.md) |  | [optional] 
**ParentProduct** | Pointer to [**SendigProductRef**](SendigProductRef.md) |  | [optional] 
**ParentClass** | Pointer to [**SendigClassRef**](SendigClassRef.md) |  | [optional] 
**Subclasses** | Pointer to [**[]SendigClassRefSubclass**](SendigClassRefSubclass.md) |  | [optional] 
**PriorVersion** | Pointer to [**SendigClassRef**](SendigClassRef.md) |  | [optional] 

## Methods

### NewSendigClassLinks

`func NewSendigClassLinks() *SendigClassLinks`

NewSendigClassLinks instantiates a new SendigClassLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendigClassLinksWithDefaults

`func NewSendigClassLinksWithDefaults() *SendigClassLinks`

NewSendigClassLinksWithDefaults instantiates a new SendigClassLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *SendigClassLinks) GetSelf() SendigClassRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *SendigClassLinks) GetSelfOk() (*SendigClassRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *SendigClassLinks) SetSelf(v SendigClassRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *SendigClassLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetModelClass

`func (o *SendigClassLinks) GetModelClass() SdtmClassRef`

GetModelClass returns the ModelClass field if non-nil, zero value otherwise.

### GetModelClassOk

`func (o *SendigClassLinks) GetModelClassOk() (*SdtmClassRef, bool)`

GetModelClassOk returns a tuple with the ModelClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModelClass

`func (o *SendigClassLinks) SetModelClass(v SdtmClassRef)`

SetModelClass sets ModelClass field to given value.

### HasModelClass

`func (o *SendigClassLinks) HasModelClass() bool`

HasModelClass returns a boolean if a field has been set.

### GetParentProduct

`func (o *SendigClassLinks) GetParentProduct() SendigProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *SendigClassLinks) GetParentProductOk() (*SendigProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *SendigClassLinks) SetParentProduct(v SendigProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *SendigClassLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetParentClass

`func (o *SendigClassLinks) GetParentClass() SendigClassRef`

GetParentClass returns the ParentClass field if non-nil, zero value otherwise.

### GetParentClassOk

`func (o *SendigClassLinks) GetParentClassOk() (*SendigClassRef, bool)`

GetParentClassOk returns a tuple with the ParentClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentClass

`func (o *SendigClassLinks) SetParentClass(v SendigClassRef)`

SetParentClass sets ParentClass field to given value.

### HasParentClass

`func (o *SendigClassLinks) HasParentClass() bool`

HasParentClass returns a boolean if a field has been set.

### GetSubclasses

`func (o *SendigClassLinks) GetSubclasses() []SendigClassRefSubclass`

GetSubclasses returns the Subclasses field if non-nil, zero value otherwise.

### GetSubclassesOk

`func (o *SendigClassLinks) GetSubclassesOk() (*[]SendigClassRefSubclass, bool)`

GetSubclassesOk returns a tuple with the Subclasses field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubclasses

`func (o *SendigClassLinks) SetSubclasses(v []SendigClassRefSubclass)`

SetSubclasses sets Subclasses field to given value.

### HasSubclasses

`func (o *SendigClassLinks) HasSubclasses() bool`

HasSubclasses returns a boolean if a field has been set.

### GetPriorVersion

`func (o *SendigClassLinks) GetPriorVersion() SendigClassRef`

GetPriorVersion returns the PriorVersion field if non-nil, zero value otherwise.

### GetPriorVersionOk

`func (o *SendigClassLinks) GetPriorVersionOk() (*SendigClassRef, bool)`

GetPriorVersionOk returns a tuple with the PriorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriorVersion

`func (o *SendigClassLinks) SetPriorVersion(v SendigClassRef)`

SetPriorVersion sets PriorVersion field to given value.

### HasPriorVersion

`func (o *SendigClassLinks) HasPriorVersion() bool`

HasPriorVersion returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


