# OpenapiClient::SendigProduct

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
| **_links** | [**SendigProductLinks**](SendigProductLinks.md) |  | [optional] |
| **classes** | [**Array&lt;SendigClass&gt;**](SendigClass.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendigProduct.new(
  name: SENDIG v3.1,
  label: Standard for Exchange ofâ€¦ies Version 3.1 (Final),
  description: The SENDIG is intended to guide the organization, structure, and format of standard nonclinical tabulation datasets for interchange between organizations such as sponsors and CROs, and for submission to regulatory authorities such as the U.S. Food and Drug Administration (FDA).,
  source: Prepared by the CDISC Stâ€¦f Nonclinical Data Team,
  effective_date: 2016-06-27,
  registration_status: Final,
  version: 3.1,
  _links: null,
  classes: null
)
```

