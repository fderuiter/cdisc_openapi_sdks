# OpenapiClient::CtPackageTerm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **concept_id** | **String** |  | [optional] |
| **submission_value** | **String** |  | [optional] |
| **definition** | **String** |  | [optional] |
| **preferred_term** | **String** |  | [optional] |
| **synonyms** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CtPackageTerm.new(
  concept_id: C64796,
  submission_value: Hematocrit,
  definition: The percentage of a whole blood specimen that is composed of red blood cells (erythrocytes).,
  preferred_term: Hematocrit Measurement,
  synonyms: [&quot;EVF&quot;,&quot;Erythrocyte Volume Fraction&quot;,&quot;Hematocrit&quot;,&quot;PCV&quot;,&quot;Packed Cell Volume&quot;]
)
```

