# OpenapiClient::ExportCtCodelist

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **codelist_code** | **String** |  | [optional] |
| **codelist_extensible__yes_no** | **String** |  | [optional] |
| **codelist_name** | **String** |  | [optional] |
| **cdisc_submission_value** | **String** |  | [optional] |
| **cdisc_synonym_s** | **Array&lt;String&gt;** |  | [optional] |
| **cdisc_definition** | **String** |  | [optional] |
| **nci_preferred_term** | **String** |  | [optional] |
| **standard_and_date** | **String** |  | [optional] |
| **** | [**Array&lt;ExportCtTerm&gt;**](ExportCtTerm.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportCtCodelist.new(
  code: null,
  codelist_code: null,
  codelist_extensible__yes_no: null,
  codelist_name: null,
  cdisc_submission_value: null,
  cdisc_synonym_s: null,
  cdisc_definition: null,
  nci_preferred_term: null,
  standard_and_date: null,
  : null
)
```

