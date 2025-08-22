#ifndef lastupdated_TEST
#define lastupdated_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define lastupdated_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/lastupdated.h"
lastupdated_t* instantiate_lastupdated(int include_optional);

#include "test_lastupdated_links.c"


lastupdated_t* instantiate_lastupdated(int include_optional) {
  lastupdated_t* lastupdated = NULL;
  if (include_optional) {
    lastupdated = lastupdated_create(
       // false, not to have infinite recursion
      instantiate_lastupdated_links(0),
      "2020-02-14",
      "2020-02-14",
      "2020-02-14",
      "2020-02-14",
      "2020-02-14",
      "2020-02-14"
    );
  } else {
    lastupdated = lastupdated_create(
      NULL,
      "2020-02-14",
      "2020-02-14",
      "2020-02-14",
      "2020-02-14",
      "2020-02-14",
      "2020-02-14"
    );
  }

  return lastupdated;
}


#ifdef lastupdated_MAIN

void test_lastupdated(int include_optional) {
    lastupdated_t* lastupdated_1 = instantiate_lastupdated(include_optional);

	cJSON* jsonlastupdated_1 = lastupdated_convertToJSON(lastupdated_1);
	printf("lastupdated :\n%s\n", cJSON_Print(jsonlastupdated_1));
	lastupdated_t* lastupdated_2 = lastupdated_parseFromJSON(jsonlastupdated_1);
	cJSON* jsonlastupdated_2 = lastupdated_convertToJSON(lastupdated_2);
	printf("repeating lastupdated:\n%s\n", cJSON_Print(jsonlastupdated_2));
}

int main() {
  test_lastupdated(1);
  test_lastupdated(0);

  printf("Hello world \n");
  return 0;
}

#endif // lastupdated_MAIN
#endif // lastupdated_TEST
