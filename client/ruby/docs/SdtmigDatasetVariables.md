# OpenapiClient::SdtmigDatasetVariables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **dataset_structure** | **String** |  | [optional] |
| **_links** | [**SdtmigDatasetVariablesLinks**](SdtmigDatasetVariablesLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigDatasetVariables.new(
  ordinal: 24,
  name: LB,
  label: Laboratory Test Results,
  description: A findings domain that contains laboratory test data such as hematology, clinical chemistry and urinalysis. This domain does not include microbiology or pharmacokinetic data, which are stored in separate domains. (Source: CDISC Controlled Terminology, DOMAIN, C49592, 2018-06-29),
  dataset_structure: One record per lab test per time point per visit per subject,
  _links: null
)
```

