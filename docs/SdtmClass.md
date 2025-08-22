# OpenapiClient::SdtmClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_links** | [**SdtmClassLinks**](SdtmClassLinks.md) |  | [optional] |
| **class_variables** | [**Array&lt;SdtmClassVariable&gt;**](SdtmClassVariable.md) |  | [optional] |
| **datasets** | [**Array&lt;SdtmDataset&gt;**](SdtmDataset.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmClass.new(
  ordinal: 1,
  name: General Observations,
  label: General Observation Class,
  description: The majority of observations collected during a study can be divided among three general classes: Interventions, Events, or Findings.  Datasets based on any of the general observation classes share a set of common Identifier and Timing variables. As a general rule, any valid Identifier or Timing variable is permissible for use in any submission dataset based on a general observation class. (Source: SDTM v1.8, Section 2.2),
  _links: null,
  class_variables: null,
  datasets: null
)
```

