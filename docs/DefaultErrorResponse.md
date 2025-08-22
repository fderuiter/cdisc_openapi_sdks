# DefaultErrorResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusCode** | Pointer to **string** | HTTP Status Code | [optional] 
**ReasonPhrase** | Pointer to **string** | HTTP Reason Phrase | [optional] 
**UserMessage** | Pointer to **string** | User Error Message | [optional] 
**AdminMessage** | Pointer to **string** | Admin Error Message | [optional] 

## Methods

### NewDefaultErrorResponse

`func NewDefaultErrorResponse() *DefaultErrorResponse`

NewDefaultErrorResponse instantiates a new DefaultErrorResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDefaultErrorResponseWithDefaults

`func NewDefaultErrorResponseWithDefaults() *DefaultErrorResponse`

NewDefaultErrorResponseWithDefaults instantiates a new DefaultErrorResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatusCode

`func (o *DefaultErrorResponse) GetStatusCode() string`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *DefaultErrorResponse) GetStatusCodeOk() (*string, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *DefaultErrorResponse) SetStatusCode(v string)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *DefaultErrorResponse) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetReasonPhrase

`func (o *DefaultErrorResponse) GetReasonPhrase() string`

GetReasonPhrase returns the ReasonPhrase field if non-nil, zero value otherwise.

### GetReasonPhraseOk

`func (o *DefaultErrorResponse) GetReasonPhraseOk() (*string, bool)`

GetReasonPhraseOk returns a tuple with the ReasonPhrase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReasonPhrase

`func (o *DefaultErrorResponse) SetReasonPhrase(v string)`

SetReasonPhrase sets ReasonPhrase field to given value.

### HasReasonPhrase

`func (o *DefaultErrorResponse) HasReasonPhrase() bool`

HasReasonPhrase returns a boolean if a field has been set.

### GetUserMessage

`func (o *DefaultErrorResponse) GetUserMessage() string`

GetUserMessage returns the UserMessage field if non-nil, zero value otherwise.

### GetUserMessageOk

`func (o *DefaultErrorResponse) GetUserMessageOk() (*string, bool)`

GetUserMessageOk returns a tuple with the UserMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserMessage

`func (o *DefaultErrorResponse) SetUserMessage(v string)`

SetUserMessage sets UserMessage field to given value.

### HasUserMessage

`func (o *DefaultErrorResponse) HasUserMessage() bool`

HasUserMessage returns a boolean if a field has been set.

### GetAdminMessage

`func (o *DefaultErrorResponse) GetAdminMessage() string`

GetAdminMessage returns the AdminMessage field if non-nil, zero value otherwise.

### GetAdminMessageOk

`func (o *DefaultErrorResponse) GetAdminMessageOk() (*string, bool)`

GetAdminMessageOk returns a tuple with the AdminMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdminMessage

`func (o *DefaultErrorResponse) SetAdminMessage(v string)`

SetAdminMessage sets AdminMessage field to given value.

### HasAdminMessage

`func (o *DefaultErrorResponse) HasAdminMessage() bool`

HasAdminMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


