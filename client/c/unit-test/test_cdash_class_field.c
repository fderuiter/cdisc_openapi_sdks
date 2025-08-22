#ifndef cdash_class_field_TEST
#define cdash_class_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_class_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_class_field.h"
cdash_class_field_t* instantiate_cdash_class_field(int include_optional);

#include "test_cdash_class_field_links.c"


cdash_class_field_t* instantiate_cdash_class_field(int include_optional) {
  cdash_class_field_t* cdash_class_field = NULL;
  if (include_optional) {
    cdash_class_field = cdash_class_field_create(
      "8",
      "--DAT",
      "Collection Date",
      "Collection date of an observation.",
      "What [is/was] the date the [event or intervention] [is/was] collected?; What [is/was] the (start) date (of the [Finding])?",
      "[Event/Intervention] Collection Date; [Finding] (Start) Date",
      "Char",
      "This is a generic DATE field that can be implemented in a system that will store partial dates. Use this for: 1. Date of data collection, 2. Visit date, 3. Visit start date, 4. Point in time collection (e.g., vital signs measurements, lab sample collection date), 5. Start date for interval collection of measurements or tests (e.g., start date of a 24-hour urine collection). Refer to the FDA Study Data Technical Conformance Guide v2.2 (June 12, 2015) Section 4.1.4.1 which indicates that when dates have the role of a timing variable, the matching Study Day variables (--DY, --STDY, or --ENDY, respectively) are included in the SDTM",
      "This field does not map directly to an SDTM variable. For the SDTM dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTM variable --DTC in ISO 8601 format. Refer to the FDA Study Data Technical Conformance Guide v2.2 (June 12, 2015) Section 4.1.4.1 which indicates that when dates have the role of a timing variable, the matching Study Day variables (--DY, --STDY, or --ENDY, respectively) should be included in the SDTM dataset.",
       // false, not to have infinite recursion
      instantiate_cdash_class_field_links(0)
    );
  } else {
    cdash_class_field = cdash_class_field_create(
      "8",
      "--DAT",
      "Collection Date",
      "Collection date of an observation.",
      "What [is/was] the date the [event or intervention] [is/was] collected?; What [is/was] the (start) date (of the [Finding])?",
      "[Event/Intervention] Collection Date; [Finding] (Start) Date",
      "Char",
      "This is a generic DATE field that can be implemented in a system that will store partial dates. Use this for: 1. Date of data collection, 2. Visit date, 3. Visit start date, 4. Point in time collection (e.g., vital signs measurements, lab sample collection date), 5. Start date for interval collection of measurements or tests (e.g., start date of a 24-hour urine collection). Refer to the FDA Study Data Technical Conformance Guide v2.2 (June 12, 2015) Section 4.1.4.1 which indicates that when dates have the role of a timing variable, the matching Study Day variables (--DY, --STDY, or --ENDY, respectively) are included in the SDTM",
      "This field does not map directly to an SDTM variable. For the SDTM dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTM variable --DTC in ISO 8601 format. Refer to the FDA Study Data Technical Conformance Guide v2.2 (June 12, 2015) Section 4.1.4.1 which indicates that when dates have the role of a timing variable, the matching Study Day variables (--DY, --STDY, or --ENDY, respectively) should be included in the SDTM dataset.",
      NULL
    );
  }

  return cdash_class_field;
}


#ifdef cdash_class_field_MAIN

void test_cdash_class_field(int include_optional) {
    cdash_class_field_t* cdash_class_field_1 = instantiate_cdash_class_field(include_optional);

	cJSON* jsoncdash_class_field_1 = cdash_class_field_convertToJSON(cdash_class_field_1);
	printf("cdash_class_field :\n%s\n", cJSON_Print(jsoncdash_class_field_1));
	cdash_class_field_t* cdash_class_field_2 = cdash_class_field_parseFromJSON(jsoncdash_class_field_1);
	cJSON* jsoncdash_class_field_2 = cdash_class_field_convertToJSON(cdash_class_field_2);
	printf("repeating cdash_class_field:\n%s\n", cJSON_Print(jsoncdash_class_field_2));
}

int main() {
  test_cdash_class_field(1);
  test_cdash_class_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_class_field_MAIN
#endif // cdash_class_field_TEST
