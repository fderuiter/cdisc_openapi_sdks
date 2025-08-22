# OpenapiClient::SdtmDatasetVariables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **dataset_structure** | **String** |  | [optional] |
| **_links** | [**SdtmDatasetVariablesLinks**](SdtmDatasetVariablesLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmDatasetVariables.new(
  ordinal: 1,
  name: DM,
  label: Demographics,
  description: A special-purpose domain that includes a set of essential standard variables that describe each subject in a clinical study. It is the parent domain for all other observations for human clinical subjects. (Source: CDISC Controlled Terminology, DOMAIN, C49572, 2018-06-29),
  dataset_structure: One record per subject,
  _links: null
)
```

