#ifndef adam_datastructure_TEST
#define adam_datastructure_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_datastructure_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_datastructure.h"
adam_datastructure_t* instantiate_adam_datastructure(int include_optional);

#include "test_adam_datastructure_links.c"


adam_datastructure_t* instantiate_adam_datastructure(int include_optional) {
  adam_datastructure_t* adam_datastructure = NULL;
  if (include_optional) {
    adam_datastructure = adam_datastructure_create(
      "1",
      "ADSL",
      "Subject-Level Analysis Dataset Structure",
      "One record per subject.",
      "ADSL",
       // false, not to have infinite recursion
      instantiate_adam_datastructure_links(0),
      list_createList()
    );
  } else {
    adam_datastructure = adam_datastructure_create(
      "1",
      "ADSL",
      "Subject-Level Analysis Dataset Structure",
      "One record per subject.",
      "ADSL",
      NULL,
      list_createList()
    );
  }

  return adam_datastructure;
}


#ifdef adam_datastructure_MAIN

void test_adam_datastructure(int include_optional) {
    adam_datastructure_t* adam_datastructure_1 = instantiate_adam_datastructure(include_optional);

	cJSON* jsonadam_datastructure_1 = adam_datastructure_convertToJSON(adam_datastructure_1);
	printf("adam_datastructure :\n%s\n", cJSON_Print(jsonadam_datastructure_1));
	adam_datastructure_t* adam_datastructure_2 = adam_datastructure_parseFromJSON(jsonadam_datastructure_1);
	cJSON* jsonadam_datastructure_2 = adam_datastructure_convertToJSON(adam_datastructure_2);
	printf("repeating adam_datastructure:\n%s\n", cJSON_Print(jsonadam_datastructure_2));
}

int main() {
  test_adam_datastructure(1);
  test_adam_datastructure(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_datastructure_MAIN
#endif // adam_datastructure_TEST
