#ifndef adam_variable_ref_TEST
#define adam_variable_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_variable_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_variable_ref.h"
adam_variable_ref_t* instantiate_adam_variable_ref(int include_optional);



adam_variable_ref_t* instantiate_adam_variable_ref(int include_optional) {
  adam_variable_ref_t* adam_variable_ref = NULL;
  if (include_optional) {
    adam_variable_ref = adam_variable_ref_create(
      "/mdr/adam/adamig-1-1/datastructures/ADSL/variables/SITEGRy",
      "Pooled Site Group y",
      "Analysis Variable"
    );
  } else {
    adam_variable_ref = adam_variable_ref_create(
      "/mdr/adam/adamig-1-1/datastructures/ADSL/variables/SITEGRy",
      "Pooled Site Group y",
      "Analysis Variable"
    );
  }

  return adam_variable_ref;
}


#ifdef adam_variable_ref_MAIN

void test_adam_variable_ref(int include_optional) {
    adam_variable_ref_t* adam_variable_ref_1 = instantiate_adam_variable_ref(include_optional);

	cJSON* jsonadam_variable_ref_1 = adam_variable_ref_convertToJSON(adam_variable_ref_1);
	printf("adam_variable_ref :\n%s\n", cJSON_Print(jsonadam_variable_ref_1));
	adam_variable_ref_t* adam_variable_ref_2 = adam_variable_ref_parseFromJSON(jsonadam_variable_ref_1);
	cJSON* jsonadam_variable_ref_2 = adam_variable_ref_convertToJSON(adam_variable_ref_2);
	printf("repeating adam_variable_ref:\n%s\n", cJSON_Print(jsonadam_variable_ref_2));
}

int main() {
  test_adam_variable_ref(1);
  test_adam_variable_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_variable_ref_MAIN
#endif // adam_variable_ref_TEST
