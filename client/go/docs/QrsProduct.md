# QrsProduct

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**EffectiveDate** | Pointer to **string** |  | [optional] 
**UntilDate** | Pointer to **string** |  | [optional] 
**RegistrationStatus** | Pointer to **string** |  | [optional] 
**Version** | Pointer to **string** |  | [optional] 
**QrsType** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**QrsProductLinks**](QrsProductLinks.md) |  | [optional] 
**Items** | Pointer to [**[]QrsItem**](QrsItem.md) |  | [optional] 

## Methods

### NewQrsProduct

`func NewQrsProduct() *QrsProduct`

NewQrsProduct instantiates a new QrsProduct object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQrsProductWithDefaults

`func NewQrsProductWithDefaults() *QrsProduct`

NewQrsProductWithDefaults instantiates a new QrsProduct object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *QrsProduct) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *QrsProduct) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *QrsProduct) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *QrsProduct) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *QrsProduct) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *QrsProduct) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *QrsProduct) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *QrsProduct) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *QrsProduct) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *QrsProduct) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *QrsProduct) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *QrsProduct) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetEffectiveDate

`func (o *QrsProduct) GetEffectiveDate() string`

GetEffectiveDate returns the EffectiveDate field if non-nil, zero value otherwise.

### GetEffectiveDateOk

`func (o *QrsProduct) GetEffectiveDateOk() (*string, bool)`

GetEffectiveDateOk returns a tuple with the EffectiveDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveDate

`func (o *QrsProduct) SetEffectiveDate(v string)`

SetEffectiveDate sets EffectiveDate field to given value.

### HasEffectiveDate

`func (o *QrsProduct) HasEffectiveDate() bool`

HasEffectiveDate returns a boolean if a field has been set.

### GetUntilDate

`func (o *QrsProduct) GetUntilDate() string`

GetUntilDate returns the UntilDate field if non-nil, zero value otherwise.

### GetUntilDateOk

`func (o *QrsProduct) GetUntilDateOk() (*string, bool)`

GetUntilDateOk returns a tuple with the UntilDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntilDate

`func (o *QrsProduct) SetUntilDate(v string)`

SetUntilDate sets UntilDate field to given value.

### HasUntilDate

`func (o *QrsProduct) HasUntilDate() bool`

HasUntilDate returns a boolean if a field has been set.

### GetRegistrationStatus

`func (o *QrsProduct) GetRegistrationStatus() string`

GetRegistrationStatus returns the RegistrationStatus field if non-nil, zero value otherwise.

### GetRegistrationStatusOk

`func (o *QrsProduct) GetRegistrationStatusOk() (*string, bool)`

GetRegistrationStatusOk returns a tuple with the RegistrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationStatus

`func (o *QrsProduct) SetRegistrationStatus(v string)`

SetRegistrationStatus sets RegistrationStatus field to given value.

### HasRegistrationStatus

`func (o *QrsProduct) HasRegistrationStatus() bool`

HasRegistrationStatus returns a boolean if a field has been set.

### GetVersion

`func (o *QrsProduct) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *QrsProduct) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *QrsProduct) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *QrsProduct) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetQrsType

`func (o *QrsProduct) GetQrsType() string`

GetQrsType returns the QrsType field if non-nil, zero value otherwise.

### GetQrsTypeOk

`func (o *QrsProduct) GetQrsTypeOk() (*string, bool)`

GetQrsTypeOk returns a tuple with the QrsType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQrsType

`func (o *QrsProduct) SetQrsType(v string)`

SetQrsType sets QrsType field to given value.

### HasQrsType

`func (o *QrsProduct) HasQrsType() bool`

HasQrsType returns a boolean if a field has been set.

### GetLinks

`func (o *QrsProduct) GetLinks() QrsProductLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *QrsProduct) GetLinksOk() (*QrsProductLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *QrsProduct) SetLinks(v QrsProductLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *QrsProduct) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetItems

`func (o *QrsProduct) GetItems() []QrsItem`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *QrsProduct) GetItemsOk() (*[]QrsItem, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *QrsProduct) SetItems(v []QrsItem)`

SetItems sets Items field to given value.

### HasItems

`func (o *QrsProduct) HasItems() bool`

HasItems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


