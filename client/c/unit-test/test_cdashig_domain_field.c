#ifndef cdashig_domain_field_TEST
#define cdashig_domain_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_domain_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_domain_field.h"
cdashig_domain_field_t* instantiate_cdashig_domain_field(int include_optional);

#include "test_cdashig_domain_field_links.c"


cdashig_domain_field_t* instantiate_cdashig_domain_field(int include_optional) {
  cdashig_domain_field_t* cdashig_domain_field = NULL;
  if (include_optional) {
    cdashig_domain_field = cdashig_domain_field_create(
      "7",
      "VSDAT",
      "Vital Signs Date",
      "The date of the vital signs measurement, represented in an unambiguous date format (e.g., DD-MON-YYYY).",
      "What was the date of the vital signs measurement?",
      "Date",
      "Record date of measurements using this format (DD-MON-YYYY).",
      "The date of measurement can be determined from a collected date of visit (VISDAT) and in such cases a separate measurement date field is not required.",
      "Char",
      "This does not map directly to an SDTMIG variable. For the SDTM submission dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTMIG variable VSDTC in ISO 8601 format.",
      "R/C",
       // false, not to have infinite recursion
      instantiate_cdashig_domain_field_links(0)
    );
  } else {
    cdashig_domain_field = cdashig_domain_field_create(
      "7",
      "VSDAT",
      "Vital Signs Date",
      "The date of the vital signs measurement, represented in an unambiguous date format (e.g., DD-MON-YYYY).",
      "What was the date of the vital signs measurement?",
      "Date",
      "Record date of measurements using this format (DD-MON-YYYY).",
      "The date of measurement can be determined from a collected date of visit (VISDAT) and in such cases a separate measurement date field is not required.",
      "Char",
      "This does not map directly to an SDTMIG variable. For the SDTM submission dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTMIG variable VSDTC in ISO 8601 format.",
      "R/C",
      NULL
    );
  }

  return cdashig_domain_field;
}


#ifdef cdashig_domain_field_MAIN

void test_cdashig_domain_field(int include_optional) {
    cdashig_domain_field_t* cdashig_domain_field_1 = instantiate_cdashig_domain_field(include_optional);

	cJSON* jsoncdashig_domain_field_1 = cdashig_domain_field_convertToJSON(cdashig_domain_field_1);
	printf("cdashig_domain_field :\n%s\n", cJSON_Print(jsoncdashig_domain_field_1));
	cdashig_domain_field_t* cdashig_domain_field_2 = cdashig_domain_field_parseFromJSON(jsoncdashig_domain_field_1);
	cJSON* jsoncdashig_domain_field_2 = cdashig_domain_field_convertToJSON(cdashig_domain_field_2);
	printf("repeating cdashig_domain_field:\n%s\n", cJSON_Print(jsoncdashig_domain_field_2));
}

int main() {
  test_cdashig_domain_field(1);
  test_cdashig_domain_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_domain_field_MAIN
#endif // cdashig_domain_field_TEST
