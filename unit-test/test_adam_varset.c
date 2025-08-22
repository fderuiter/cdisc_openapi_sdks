#ifndef adam_varset_TEST
#define adam_varset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_varset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_varset.h"
adam_varset_t* instantiate_adam_varset(int include_optional);

#include "test_adam_varset_links.c"


adam_varset_t* instantiate_adam_varset(int include_optional) {
  adam_varset_t* adam_varset = NULL;
  if (include_optional) {
    adam_varset = adam_varset_create(
      "1",
      "ADSL",
      "Subject-Level Analysis Dataset Structure",
      "One record per subject.",
       // false, not to have infinite recursion
      instantiate_adam_varset_links(0),
      list_createList()
    );
  } else {
    adam_varset = adam_varset_create(
      "1",
      "ADSL",
      "Subject-Level Analysis Dataset Structure",
      "One record per subject.",
      NULL,
      list_createList()
    );
  }

  return adam_varset;
}


#ifdef adam_varset_MAIN

void test_adam_varset(int include_optional) {
    adam_varset_t* adam_varset_1 = instantiate_adam_varset(include_optional);

	cJSON* jsonadam_varset_1 = adam_varset_convertToJSON(adam_varset_1);
	printf("adam_varset :\n%s\n", cJSON_Print(jsonadam_varset_1));
	adam_varset_t* adam_varset_2 = adam_varset_parseFromJSON(jsonadam_varset_1);
	cJSON* jsonadam_varset_2 = adam_varset_convertToJSON(adam_varset_2);
	printf("repeating adam_varset:\n%s\n", cJSON_Print(jsonadam_varset_2));
}

int main() {
  test_adam_varset(1);
  test_adam_varset(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_varset_MAIN
#endif // adam_varset_TEST
