# OpenapiClient::SdtmProduct

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
| **_links** | [**SdtmProductLinks**](SdtmProductLinks.md) |  | [optional] |
| **classes** | [**Array&lt;SdtmClass&gt;**](SdtmClass.md) |  | [optional] |
| **datasets** | [**Array&lt;SdtmDataset&gt;**](SdtmDataset.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmProduct.new(
  name: SDTM v1.8,
  label: Study Data Tabulation Model Version 1.8 (Final),
  description: This document describes the Study Data Tabulation Model (SDTM), which defines a standard structure for study data tabulations.,
  source: CDISC Submission Data Standards Team and CDISC SDTM Governance Committee,
  effective_date: 2019-09-17,
  registration_status: Final,
  version: 1.8,
  _links: null,
  classes: null,
  datasets: null
)
```

