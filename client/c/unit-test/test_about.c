#ifndef about_TEST
#define about_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define about_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/about.h"
about_t* instantiate_about(int include_optional);

#include "test_about_links.c"


about_t* instantiate_about(int include_optional) {
  about_t* about = NULL;
  if (include_optional) {
    about = about_create(
       // false, not to have infinite recursion
      instantiate_about_links(0),
      "https://wiki.cdisc.org/display/LIBSUPRT/Release+Notes",
      "https://www.cdisc.org/cdisc-library/api-documentation"
    );
  } else {
    about = about_create(
      NULL,
      "https://wiki.cdisc.org/display/LIBSUPRT/Release+Notes",
      "https://www.cdisc.org/cdisc-library/api-documentation"
    );
  }

  return about;
}


#ifdef about_MAIN

void test_about(int include_optional) {
    about_t* about_1 = instantiate_about(include_optional);

	cJSON* jsonabout_1 = about_convertToJSON(about_1);
	printf("about :\n%s\n", cJSON_Print(jsonabout_1));
	about_t* about_2 = about_parseFromJSON(jsonabout_1);
	cJSON* jsonabout_2 = about_convertToJSON(about_2);
	printf("repeating about:\n%s\n", cJSON_Print(jsonabout_2));
}

int main() {
  test_about(1);
  test_about(0);

  printf("Hello world \n");
  return 0;
}

#endif // about_MAIN
#endif // about_TEST
