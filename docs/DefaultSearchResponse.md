# DefaultSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hits** | Pointer to [**[]DefaultSearchResponseHitsInner**](DefaultSearchResponseHitsInner.md) |  | [optional] 
**TotalHits** | Pointer to **float32** |  | [optional] 

## Methods

### NewDefaultSearchResponse

`func NewDefaultSearchResponse() *DefaultSearchResponse`

NewDefaultSearchResponse instantiates a new DefaultSearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDefaultSearchResponseWithDefaults

`func NewDefaultSearchResponseWithDefaults() *DefaultSearchResponse`

NewDefaultSearchResponseWithDefaults instantiates a new DefaultSearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetHits

`func (o *DefaultSearchResponse) GetHits() []DefaultSearchResponseHitsInner`

GetHits returns the Hits field if non-nil, zero value otherwise.

### GetHitsOk

`func (o *DefaultSearchResponse) GetHitsOk() (*[]DefaultSearchResponseHitsInner, bool)`

GetHitsOk returns a tuple with the Hits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHits

`func (o *DefaultSearchResponse) SetHits(v []DefaultSearchResponseHitsInner)`

SetHits sets Hits field to given value.

### HasHits

`func (o *DefaultSearchResponse) HasHits() bool`

HasHits returns a boolean if a field has been set.

### GetTotalHits

`func (o *DefaultSearchResponse) GetTotalHits() float32`

GetTotalHits returns the TotalHits field if non-nil, zero value otherwise.

### GetTotalHitsOk

`func (o *DefaultSearchResponse) GetTotalHitsOk() (*float32, bool)`

GetTotalHitsOk returns a tuple with the TotalHits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalHits

`func (o *DefaultSearchResponse) SetTotalHits(v float32)`

SetTotalHits sets TotalHits field to given value.

### HasTotalHits

`func (o *DefaultSearchResponse) HasTotalHits() bool`

HasTotalHits returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


