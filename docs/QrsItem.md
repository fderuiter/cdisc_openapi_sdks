# OpenapiClient::QrsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **question_text** | **String** |  | [optional] |
| **_links** | [**QrsItemLinks**](QrsItemLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::QrsItem.new(
  ordinal: 1,
  label: AIMS01-Muscles of Facial Expression,
  question_text: Abnormal Involuntary Movement Scale - Facial and Oral Movements, Muscles of facial expression, e.g., movements of forehead, eyebrows, periorbital area, cheeks. Include frowning, blinking, grimacing of upper face.,
  _links: null
)
```

