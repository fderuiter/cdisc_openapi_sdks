#ifndef adam_varset_ref_TEST
#define adam_varset_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_varset_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_varset_ref.h"
adam_varset_ref_t* instantiate_adam_varset_ref(int include_optional);



adam_varset_ref_t* instantiate_adam_varset_ref(int include_optional) {
  adam_varset_ref_t* adam_varset_ref = NULL;
  if (include_optional) {
    adam_varset_ref = adam_varset_ref_create(
      "/mdr/adam/adamig-1-1/datastructures/ADSL/varsets/Identifier",
      "ADSL Identifier Variables",
      "Variable Set"
    );
  } else {
    adam_varset_ref = adam_varset_ref_create(
      "/mdr/adam/adamig-1-1/datastructures/ADSL/varsets/Identifier",
      "ADSL Identifier Variables",
      "Variable Set"
    );
  }

  return adam_varset_ref;
}


#ifdef adam_varset_ref_MAIN

void test_adam_varset_ref(int include_optional) {
    adam_varset_ref_t* adam_varset_ref_1 = instantiate_adam_varset_ref(include_optional);

	cJSON* jsonadam_varset_ref_1 = adam_varset_ref_convertToJSON(adam_varset_ref_1);
	printf("adam_varset_ref :\n%s\n", cJSON_Print(jsonadam_varset_ref_1));
	adam_varset_ref_t* adam_varset_ref_2 = adam_varset_ref_parseFromJSON(jsonadam_varset_ref_1);
	cJSON* jsonadam_varset_ref_2 = adam_varset_ref_convertToJSON(adam_varset_ref_2);
	printf("repeating adam_varset_ref:\n%s\n", cJSON_Print(jsonadam_varset_ref_2));
}

int main() {
  test_adam_varset_ref(1);
  test_adam_varset_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_varset_ref_MAIN
#endif // adam_varset_ref_TEST
