# OpenapiClient::SdtmigClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_links** | [**SdtmigClassLinks**](SdtmigClassLinks.md) |  | [optional] |
| **datasets** | [**Array&lt;SdtmigDataset&gt;**](SdtmigDataset.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigClass.new(
  ordinal: 5,
  name: Findings,
  label: Findings Observation Class,
  description: This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29),
  _links: null,
  datasets: null
)
```

