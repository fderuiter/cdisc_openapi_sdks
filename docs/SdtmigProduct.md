# OpenapiClient::SdtmigProduct

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
| **_links** | [**SdtmigProductLinks**](SdtmigProductLinks.md) |  | [optional] |
| **classes** | [**Array&lt;SdtmigClass&gt;**](SdtmigClass.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SdtmigProduct.new(
  name: SDTMIG v3.3,
  label: Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final),
  description: CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.,
  source: Prepared by the CDISC Submission Data Standards Team,
  effective_date: 2018-11-20,
  registration_status: Final,
  version: 3.3,
  _links: null,
  classes: null
)
```

