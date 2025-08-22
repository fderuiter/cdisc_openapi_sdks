# OpenapiClient::QrsProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **effective_date** | **String** |  | [optional] |
| **until_date** | **String** |  | [optional] |
| **registration_status** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **qrs_type** | **String** |  | [optional] |
| **_links** | [**QrsProductLinks**](QrsProductLinks.md) |  | [optional] |
| **items** | [**Array&lt;QrsItem&gt;**](QrsItem.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::QrsProduct.new(
  name: AIMS v1.0,
  label: Abnormal Involuntary Movement Scale Version 1.0,
  description: Abnormal Involuntary Movement Scale (AIMS) (Guy W. Ed. ECDEU Assessment Manual for Psychopharmacology. Rockville MD: US Dept of Health, Education and Welfare. 1976, Publication No. (ADM) 76-338).,
  effective_date: 2013-05-22,
  until_date: 2030-12-31,
  registration_status: Final,
  version: 1-0,
  qrs_type: Questionnaire,
  _links: null,
  items: null
)
```

