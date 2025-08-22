#ifndef about_links_TEST
#define about_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define about_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/about_links.h"
about_links_t* instantiate_about_links(int include_optional);

#include "test_about_ref.c"
#include "test_lastupdated_ref.c"


about_links_t* instantiate_about_links(int include_optional) {
  about_links_t* about_links = NULL;
  if (include_optional) {
    about_links = about_links_create(
       // false, not to have infinite recursion
      instantiate_about_ref(0),
       // false, not to have infinite recursion
      instantiate_lastupdated_ref(0)
    );
  } else {
    about_links = about_links_create(
      NULL,
      NULL
    );
  }

  return about_links;
}


#ifdef about_links_MAIN

void test_about_links(int include_optional) {
    about_links_t* about_links_1 = instantiate_about_links(include_optional);

	cJSON* jsonabout_links_1 = about_links_convertToJSON(about_links_1);
	printf("about_links :\n%s\n", cJSON_Print(jsonabout_links_1));
	about_links_t* about_links_2 = about_links_parseFromJSON(jsonabout_links_1);
	cJSON* jsonabout_links_2 = about_links_convertToJSON(about_links_2);
	printf("repeating about_links:\n%s\n", cJSON_Print(jsonabout_links_2));
}

int main() {
  test_about_links(1);
  test_about_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // about_links_MAIN
#endif // about_links_TEST
