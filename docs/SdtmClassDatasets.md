# OpenapiClient::SdtmClassDatasets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **_links** | [**SdtmClassDatasetsLinks**](SdtmClassDatasetsLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmClassDatasets.new(
  ordinal: 6,
  name: Special-Purpose,
  label: Special-Purpose Datasets,
  description: This SDTM class contains a set of domains which do not conform to the Findings, Events or Interventions observation classes. The domains included are DM, CO, SE and SV. (Source: CDISC Controlled Terminology, GNRLOBSC, C103377, 2018-06-29),
  _links: null
)
```

