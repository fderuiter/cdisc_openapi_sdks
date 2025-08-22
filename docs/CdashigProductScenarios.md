# OpenapiClient::CdashigProductScenarios

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
| **_links** | [**CdashigProductScenariosLinks**](CdashigProductScenariosLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashigProductScenarios.new(
  name: CDASHIG v2.1,
  label: Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1,
  description: The Clinical Data Acquisition Standards Harmonization (CDASH) Model, the CDASH Implementation Guide (CDASHIG), and the CDASHIG Metadata Table define basic standards for the collection of clinical trial data and how to implement the standard for specific case report forms (CRFs).,
  source: Prepared by the CDISC CDASH Team,
  effective_date: 2019-11-01,
  registration_status: Final,
  version: 2.1,
  _links: null
)
```

