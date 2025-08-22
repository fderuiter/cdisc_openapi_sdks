# OpenapiClient::CtCodelistTerms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **concept_id** | **String** |  | [optional] |
| **extensible** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **submission_value** | **String** |  | [optional] |
| **definition** | **String** |  | [optional] |
| **preferred_term** | **String** |  | [optional] |
| **synonyms** | **Array&lt;String&gt;** |  | [optional] |
| **_links** | [**CtCodelistTermsLinks**](CtCodelistTermsLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CtCodelistTerms.new(
  concept_id: C67154,
  extensible: true,
  name: Laboratory Test Name,
  submission_value: LBTEST,
  definition: Terminology used for laboratory test names of the CDISC Study Data Tabulation Model.,
  preferred_term: CDISC SDTM Laboratory Test Name Terminology,
  synonyms: [&quot;Laboratory Test Name&quot;],
  _links: null
)
```

