# OpenapiClient::CtPackageCodelists

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
| **_links** | [**CtPackageCodelistsLinks**](CtPackageCodelistsLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CtPackageCodelists.new(
  name: SDTM CT 2019-12-20,
  label: SDTM Controlled Terminology Package 40 Effective 2019-12-20,
  description: CDISC Controlled Terminology for SDTM is the set of CDISC-developed or CDISC-adopted standard expressions (values) used with data items within CDISC-defined SDTM datasets.,
  source: SDTM Controlled Terminology developed by the CDISC Terminology Team in collaboration with the National Cancer Institute&#39;s Enterprise Vocabulary Services (EVS),
  effective_date: 2019-12-20,
  registration_status: Final,
  version: TODO,
  _links: null
)
```

