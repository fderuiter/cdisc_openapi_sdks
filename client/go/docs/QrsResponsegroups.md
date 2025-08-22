# QrsResponsegroups

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
**Links** | Pointer to [**QrsResponsegroupsLinks**](QrsResponsegroupsLinks.md) |  | [optional] 

## Methods

### NewQrsResponsegroups

`func NewQrsResponsegroups() *QrsResponsegroups`

NewQrsResponsegroups instantiates a new QrsResponsegroups object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQrsResponsegroupsWithDefaults

`func NewQrsResponsegroupsWithDefaults() *QrsResponsegroups`

NewQrsResponsegroupsWithDefaults instantiates a new QrsResponsegroups object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *QrsResponsegroups) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *QrsResponsegroups) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *QrsResponsegroups) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *QrsResponsegroups) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLabel

`func (o *QrsResponsegroups) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *QrsResponsegroups) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *QrsResponsegroups) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *QrsResponsegroups) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetDescription

`func (o *QrsResponsegroups) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *QrsResponsegroups) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *QrsResponsegroups) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *QrsResponsegroups) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetEffectiveDate

`func (o *QrsResponsegroups) GetEffectiveDate() string`

GetEffectiveDate returns the EffectiveDate field if non-nil, zero value otherwise.

### GetEffectiveDateOk

`func (o *QrsResponsegroups) GetEffectiveDateOk() (*string, bool)`

GetEffectiveDateOk returns a tuple with the EffectiveDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveDate

`func (o *QrsResponsegroups) SetEffectiveDate(v string)`

SetEffectiveDate sets EffectiveDate field to given value.

### HasEffectiveDate

`func (o *QrsResponsegroups) HasEffectiveDate() bool`

HasEffectiveDate returns a boolean if a field has been set.

### GetUntilDate

`func (o *QrsResponsegroups) GetUntilDate() string`

GetUntilDate returns the UntilDate field if non-nil, zero value otherwise.

### GetUntilDateOk

`func (o *QrsResponsegroups) GetUntilDateOk() (*string, bool)`

GetUntilDateOk returns a tuple with the UntilDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntilDate

`func (o *QrsResponsegroups) SetUntilDate(v string)`

SetUntilDate sets UntilDate field to given value.

### HasUntilDate

`func (o *QrsResponsegroups) HasUntilDate() bool`

HasUntilDate returns a boolean if a field has been set.

### GetRegistrationStatus

`func (o *QrsResponsegroups) GetRegistrationStatus() string`

GetRegistrationStatus returns the RegistrationStatus field if non-nil, zero value otherwise.

### GetRegistrationStatusOk

`func (o *QrsResponsegroups) GetRegistrationStatusOk() (*string, bool)`

GetRegistrationStatusOk returns a tuple with the RegistrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationStatus

`func (o *QrsResponsegroups) SetRegistrationStatus(v string)`

SetRegistrationStatus sets RegistrationStatus field to given value.

### HasRegistrationStatus

`func (o *QrsResponsegroups) HasRegistrationStatus() bool`

HasRegistrationStatus returns a boolean if a field has been set.

### GetVersion

`func (o *QrsResponsegroups) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *QrsResponsegroups) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *QrsResponsegroups) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *QrsResponsegroups) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetQrsType

`func (o *QrsResponsegroups) GetQrsType() string`

GetQrsType returns the QrsType field if non-nil, zero value otherwise.

### GetQrsTypeOk

`func (o *QrsResponsegroups) GetQrsTypeOk() (*string, bool)`

GetQrsTypeOk returns a tuple with the QrsType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQrsType

`func (o *QrsResponsegroups) SetQrsType(v string)`

SetQrsType sets QrsType field to given value.

### HasQrsType

`func (o *QrsResponsegroups) HasQrsType() bool`

HasQrsType returns a boolean if a field has been set.

### GetLinks

`func (o *QrsResponsegroups) GetLinks() QrsResponsegroupsLinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *QrsResponsegroups) GetLinksOk() (*QrsResponsegroupsLinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *QrsResponsegroups) SetLinks(v QrsResponsegroupsLinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *QrsResponsegroups) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


