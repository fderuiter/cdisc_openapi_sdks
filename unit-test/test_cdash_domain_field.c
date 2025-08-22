#ifndef cdash_domain_field_TEST
#define cdash_domain_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_domain_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_domain_field.h"
cdash_domain_field_t* instantiate_cdash_domain_field(int include_optional);

#include "test_cdash_domain_field_links.c"


cdash_domain_field_t* instantiate_cdash_domain_field(int include_optional) {
  cdash_domain_field_t* cdash_domain_field = NULL;
  if (include_optional) {
    cdash_domain_field = cdash_domain_field_create(
      "18",
      "AGE",
      "Age",
      "The age of the subject expressed in AGEU.",
      "0",
      "What [is/was] the subject's age?",
      "Age",
      "Num",
      "If Age is collected, it should be collected as a number and, to be correctly interpreted, the age value should be associated to a variable for the Age Unit. It may be necessary to know when the age was collected as an age may need to be recalculated for analysis, such as deriving age at a reference start time (RFSTDTC for SDTM). BRTHDTC may not be available in all cases (due to subject privacy concerns). If AGE is collected, then it is recommended that the date of collection also be recorded, either separately or by association to the date of the visit.",
      "Maps directly to the SDTM variable listed in the column with the heading "SDTM Target".",
       // false, not to have infinite recursion
      instantiate_cdash_domain_field_links(0)
    );
  } else {
    cdash_domain_field = cdash_domain_field_create(
      "18",
      "AGE",
      "Age",
      "The age of the subject expressed in AGEU.",
      "0",
      "What [is/was] the subject's age?",
      "Age",
      "Num",
      "If Age is collected, it should be collected as a number and, to be correctly interpreted, the age value should be associated to a variable for the Age Unit. It may be necessary to know when the age was collected as an age may need to be recalculated for analysis, such as deriving age at a reference start time (RFSTDTC for SDTM). BRTHDTC may not be available in all cases (due to subject privacy concerns). If AGE is collected, then it is recommended that the date of collection also be recorded, either separately or by association to the date of the visit.",
      "Maps directly to the SDTM variable listed in the column with the heading "SDTM Target".",
      NULL
    );
  }

  return cdash_domain_field;
}


#ifdef cdash_domain_field_MAIN

void test_cdash_domain_field(int include_optional) {
    cdash_domain_field_t* cdash_domain_field_1 = instantiate_cdash_domain_field(include_optional);

	cJSON* jsoncdash_domain_field_1 = cdash_domain_field_convertToJSON(cdash_domain_field_1);
	printf("cdash_domain_field :\n%s\n", cJSON_Print(jsoncdash_domain_field_1));
	cdash_domain_field_t* cdash_domain_field_2 = cdash_domain_field_parseFromJSON(jsoncdash_domain_field_1);
	cJSON* jsoncdash_domain_field_2 = cdash_domain_field_convertToJSON(cdash_domain_field_2);
	printf("repeating cdash_domain_field:\n%s\n", cJSON_Print(jsoncdash_domain_field_2));
}

int main() {
  test_cdash_domain_field(1);
  test_cdash_domain_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_domain_field_MAIN
#endif // cdash_domain_field_TEST
