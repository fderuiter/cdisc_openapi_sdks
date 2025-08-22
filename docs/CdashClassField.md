# OpenapiClient::CdashClassField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **definition** | **String** |  | [optional] |
| **question_text** | **String** |  | [optional] |
| **prompt** | **String** |  | [optional] |
| **simple_datatype** | **String** |  | [optional] |
| **implementation_notes** | **String** |  | [optional] |
| **mapping_instructions** | **String** |  | [optional] |
| **_links** | [**CdashClassFieldLinks**](CdashClassFieldLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CdashClassField.new(
  ordinal: 8,
  name: --DAT,
  label: Collection Date,
  definition: Collection date of an observation.,
  question_text: What [is/was] the date the [event or intervention] [is/was] collected?; What [is/was] the (start) date (of the [Finding])?,
  prompt: [Event/Intervention] Collection Date; [Finding] (Start) Date,
  simple_datatype: Char,
  implementation_notes: This is a generic DATE field that can be implemented in a system that will store partial dates. Use this for: 1. Date of data collection, 2. Visit date, 3. Visit start date, 4. Point in time collection (e.g., vital signs measurements, lab sample collection date), 5. Start date for interval collection of measurements or tests (e.g., start date of a 24-hour urine collection). Refer to the FDA Study Data Technical Conformance Guide v2.2 (June 12, 2015) Section 4.1.4.1 which indicates that when dates have the role of a timing variable, the matching Study Day variables (--DY, --STDY, or --ENDY, respectively) are included in the SDTM,
  mapping_instructions: This field does not map directly to an SDTM variable. For the SDTM dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTM variable --DTC in ISO 8601 format. Refer to the FDA Study Data Technical Conformance Guide v2.2 (June 12, 2015) Section 4.1.4.1 which indicates that when dates have the role of a timing variable, the matching Study Day variables (--DY, --STDY, or --ENDY, respectively) should be included in the SDTM dataset.,
  _links: null
)
```

