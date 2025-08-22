#ifndef cdashig_scenario_field_TEST
#define cdashig_scenario_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_scenario_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_scenario_field.h"
cdashig_scenario_field_t* instantiate_cdashig_scenario_field(int include_optional);

#include "test_cdashig_scenario_field_links.c"


cdashig_scenario_field_t* instantiate_cdashig_scenario_field(int include_optional) {
  cdashig_scenario_field_t* cdashig_scenario_field = NULL;
  if (include_optional) {
    cdashig_scenario_field = cdashig_scenario_field_create(
      "7",
      "[VSTESTCD]_VSDAT",
      "Vital Signs Date",
      "The date of the vital signs measurement, represented in an unambiguous date format (e.g., DD-MON-YYYY).",
      "What was the date of the measurement(s)?",
      "[VSTEST] Date",
      "Record date of measurements using this format (DD-MON-YYYY).",
      "A single date may be collected for all the vital sign measurements when they are performed on the same date. The date of each measurement can also be collected for each measurement using a CDASH variable [VSTESTCD]_VSDAT. The date of the measurements may be determined from a collected date of visit and in such cases a separate measurement date field is not required.",
      "Char",
      "This does not map directly to an SDTMIG variable. For the SDTM submission dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTMIG variable VSDTC in ISO 8601 format.",
      "R/C",
       // false, not to have infinite recursion
      instantiate_cdashig_scenario_field_links(0)
    );
  } else {
    cdashig_scenario_field = cdashig_scenario_field_create(
      "7",
      "[VSTESTCD]_VSDAT",
      "Vital Signs Date",
      "The date of the vital signs measurement, represented in an unambiguous date format (e.g., DD-MON-YYYY).",
      "What was the date of the measurement(s)?",
      "[VSTEST] Date",
      "Record date of measurements using this format (DD-MON-YYYY).",
      "A single date may be collected for all the vital sign measurements when they are performed on the same date. The date of each measurement can also be collected for each measurement using a CDASH variable [VSTESTCD]_VSDAT. The date of the measurements may be determined from a collected date of visit and in such cases a separate measurement date field is not required.",
      "Char",
      "This does not map directly to an SDTMIG variable. For the SDTM submission dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTMIG variable VSDTC in ISO 8601 format.",
      "R/C",
      NULL
    );
  }

  return cdashig_scenario_field;
}


#ifdef cdashig_scenario_field_MAIN

void test_cdashig_scenario_field(int include_optional) {
    cdashig_scenario_field_t* cdashig_scenario_field_1 = instantiate_cdashig_scenario_field(include_optional);

	cJSON* jsoncdashig_scenario_field_1 = cdashig_scenario_field_convertToJSON(cdashig_scenario_field_1);
	printf("cdashig_scenario_field :\n%s\n", cJSON_Print(jsoncdashig_scenario_field_1));
	cdashig_scenario_field_t* cdashig_scenario_field_2 = cdashig_scenario_field_parseFromJSON(jsoncdashig_scenario_field_1);
	cJSON* jsoncdashig_scenario_field_2 = cdashig_scenario_field_convertToJSON(cdashig_scenario_field_2);
	printf("repeating cdashig_scenario_field:\n%s\n", cJSON_Print(jsoncdashig_scenario_field_2));
}

int main() {
  test_cdashig_scenario_field(1);
  test_cdashig_scenario_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_scenario_field_MAIN
#endif // cdashig_scenario_field_TEST
