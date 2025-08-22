#ifndef lastupdated_links_TEST
#define lastupdated_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define lastupdated_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/lastupdated_links.h"
lastupdated_links_t* instantiate_lastupdated_links(int include_optional);

#include "test_lastupdated_ref.c"


lastupdated_links_t* instantiate_lastupdated_links(int include_optional) {
  lastupdated_links_t* lastupdated_links = NULL;
  if (include_optional) {
    lastupdated_links = lastupdated_links_create(
       // false, not to have infinite recursion
      instantiate_lastupdated_ref(0)
    );
  } else {
    lastupdated_links = lastupdated_links_create(
      NULL
    );
  }

  return lastupdated_links;
}


#ifdef lastupdated_links_MAIN

void test_lastupdated_links(int include_optional) {
    lastupdated_links_t* lastupdated_links_1 = instantiate_lastupdated_links(include_optional);

	cJSON* jsonlastupdated_links_1 = lastupdated_links_convertToJSON(lastupdated_links_1);
	printf("lastupdated_links :\n%s\n", cJSON_Print(jsonlastupdated_links_1));
	lastupdated_links_t* lastupdated_links_2 = lastupdated_links_parseFromJSON(jsonlastupdated_links_1);
	cJSON* jsonlastupdated_links_2 = lastupdated_links_convertToJSON(lastupdated_links_2);
	printf("repeating lastupdated_links:\n%s\n", cJSON_Print(jsonlastupdated_links_2));
}

int main() {
  test_lastupdated_links(1);
  test_lastupdated_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // lastupdated_links_MAIN
#endif // lastupdated_links_TEST
