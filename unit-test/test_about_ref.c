#ifndef about_ref_TEST
#define about_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define about_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/about_ref.h"
about_ref_t* instantiate_about_ref(int include_optional);



about_ref_t* instantiate_about_ref(int include_optional) {
  about_ref_t* about_ref = NULL;
  if (include_optional) {
    about_ref = about_ref_create(
      "/mdr/about",
      "Information About CDISC Library",
      "About CDISC Library"
    );
  } else {
    about_ref = about_ref_create(
      "/mdr/about",
      "Information About CDISC Library",
      "About CDISC Library"
    );
  }

  return about_ref;
}


#ifdef about_ref_MAIN

void test_about_ref(int include_optional) {
    about_ref_t* about_ref_1 = instantiate_about_ref(include_optional);

	cJSON* jsonabout_ref_1 = about_ref_convertToJSON(about_ref_1);
	printf("about_ref :\n%s\n", cJSON_Print(jsonabout_ref_1));
	about_ref_t* about_ref_2 = about_ref_parseFromJSON(jsonabout_ref_1);
	cJSON* jsonabout_ref_2 = about_ref_convertToJSON(about_ref_2);
	printf("repeating about_ref:\n%s\n", cJSON_Print(jsonabout_ref_2));
}

int main() {
  test_about_ref(1);
  test_about_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // about_ref_MAIN
#endif // about_ref_TEST
