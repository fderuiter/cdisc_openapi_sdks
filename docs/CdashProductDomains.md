# OpenapiClient::CdashProductDomains

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **effective_date** | **String** |  | [optional] |
| **registration_status** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **_links** | [**CdashProductDomainsLinks**](CdashProductDomainsLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashProductDomains.new(
  name: CDASH Model v1.1,
  label: Clinical Data Acquisition Standards Harmonization Model Version 1.1,
  description: The Clinical Data Acquisition Standards Harmonization (CDASH) Model describes the foundational structure for the organization, naming, and description of variables and associated attributes to support data collection in clinical trials. The CDASH Model provides naming conventions for the CDASH Implementation Guide (CDASHIG) variables along with additional metadata to help facilitate mapping collected data to their respective SDTM Implementation Guide (SDTMIG) variables.,
  source: Prepared by the CDISC CDASH Team,
  effective_date: 2019-11-01,
  registration_status: Final,
  version: 1.1,
  _links: null
)
```

