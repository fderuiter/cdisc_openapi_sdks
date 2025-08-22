#ifndef adam_datastructure_varsets_TEST
#define adam_datastructure_varsets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_datastructure_varsets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_datastructure_varsets.h"
adam_datastructure_varsets_t* instantiate_adam_datastructure_varsets(int include_optional);

#include "test_adam_datastructure_varsets_links.c"


adam_datastructure_varsets_t* instantiate_adam_datastructure_varsets(int include_optional) {
  adam_datastructure_varsets_t* adam_datastructure_varsets = NULL;
  if (include_optional) {
    adam_datastructure_varsets = adam_datastructure_varsets_create(
      "1",
      "ADSL",
      "Subject-Level Analysis Dataset Structure",
      "One record per subject.",
      "ADSL",
       // false, not to have infinite recursion
      instantiate_adam_datastructure_varsets_links(0)
    );
  } else {
    adam_datastructure_varsets = adam_datastructure_varsets_create(
      "1",
      "ADSL",
      "Subject-Level Analysis Dataset Structure",
      "One record per subject.",
      "ADSL",
      NULL
    );
  }

  return adam_datastructure_varsets;
}


#ifdef adam_datastructure_varsets_MAIN

void test_adam_datastructure_varsets(int include_optional) {
    adam_datastructure_varsets_t* adam_datastructure_varsets_1 = instantiate_adam_datastructure_varsets(include_optional);

	cJSON* jsonadam_datastructure_varsets_1 = adam_datastructure_varsets_convertToJSON(adam_datastructure_varsets_1);
	printf("adam_datastructure_varsets :\n%s\n", cJSON_Print(jsonadam_datastructure_varsets_1));
	adam_datastructure_varsets_t* adam_datastructure_varsets_2 = adam_datastructure_varsets_parseFromJSON(jsonadam_datastructure_varsets_1);
	cJSON* jsonadam_datastructure_varsets_2 = adam_datastructure_varsets_convertToJSON(adam_datastructure_varsets_2);
	printf("repeating adam_datastructure_varsets:\n%s\n", cJSON_Print(jsonadam_datastructure_varsets_2));
}

int main() {
  test_adam_datastructure_varsets(1);
  test_adam_datastructure_varsets(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_datastructure_varsets_MAIN
#endif // adam_datastructure_varsets_TEST
