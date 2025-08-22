# OpenapiClient::SdtmDatasetVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **role_description** | **String** |  | [optional] |
| **simple_datatype** | **String** |  | [optional] |
| **described_value_domain** | **String** |  | [optional] |
| **_links** | [**SdtmDatasetVariableLinks**](SdtmDatasetVariableLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmDatasetVariable.new(
  ordinal: 4,
  name: SUBJID,
  label: Subject Identifier for the Study,
  description: Subject identifier, which must be unique within the study. Often the ID of the subject as recorded on a CRF.,
  role: Topic,
  role_description: Topic,
  simple_datatype: Char,
  described_value_domain: Sponsor-Defined,
  _links: null
)
```

