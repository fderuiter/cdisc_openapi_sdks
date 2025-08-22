# QrsItemsLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | Pointer to [**QrsItemsRef**](QrsItemsRef.md) |  | [optional] 
**ParentProduct** | Pointer to [**QrsProductRef**](QrsProductRef.md) |  | [optional] 
**Items** | Pointer to [**[]QrsItemRefElement**](QrsItemRefElement.md) |  | [optional] 

## Methods

### NewQrsItemsLinks

`func NewQrsItemsLinks() *QrsItemsLinks`

NewQrsItemsLinks instantiates a new QrsItemsLinks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQrsItemsLinksWithDefaults

`func NewQrsItemsLinksWithDefaults() *QrsItemsLinks`

NewQrsItemsLinksWithDefaults instantiates a new QrsItemsLinks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSelf

`func (o *QrsItemsLinks) GetSelf() QrsItemsRef`

GetSelf returns the Self field if non-nil, zero value otherwise.

### GetSelfOk

`func (o *QrsItemsLinks) GetSelfOk() (*QrsItemsRef, bool)`

GetSelfOk returns a tuple with the Self field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelf

`func (o *QrsItemsLinks) SetSelf(v QrsItemsRef)`

SetSelf sets Self field to given value.

### HasSelf

`func (o *QrsItemsLinks) HasSelf() bool`

HasSelf returns a boolean if a field has been set.

### GetParentProduct

`func (o *QrsItemsLinks) GetParentProduct() QrsProductRef`

GetParentProduct returns the ParentProduct field if non-nil, zero value otherwise.

### GetParentProductOk

`func (o *QrsItemsLinks) GetParentProductOk() (*QrsProductRef, bool)`

GetParentProductOk returns a tuple with the ParentProduct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentProduct

`func (o *QrsItemsLinks) SetParentProduct(v QrsProductRef)`

SetParentProduct sets ParentProduct field to given value.

### HasParentProduct

`func (o *QrsItemsLinks) HasParentProduct() bool`

HasParentProduct returns a boolean if a field has been set.

### GetItems

`func (o *QrsItemsLinks) GetItems() []QrsItemRefElement`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *QrsItemsLinks) GetItemsOk() (*[]QrsItemRefElement, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *QrsItemsLinks) SetItems(v []QrsItemRefElement)`

SetItems sets Items field to given value.

### HasItems

`func (o *QrsItemsLinks) HasItems() bool`

HasItems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


