#ifndef adam_varset_ref_element_TEST
#define adam_varset_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_varset_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_varset_ref_element.h"
adam_varset_ref_element_t* instantiate_adam_varset_ref_element(int include_optional);



adam_varset_ref_element_t* instantiate_adam_varset_ref_element(int include_optional) {
  adam_varset_ref_element_t* adam_varset_ref_element = NULL;
  if (include_optional) {
    adam_varset_ref_element = adam_varset_ref_element_create(
      "/mdr/adam/adamig-1-1/datastructures/ADSL/varsets/Identifier",
      "ADSL Identifier Variables",
      "Variable Set"
    );
  } else {
    adam_varset_ref_element = adam_varset_ref_element_create(
      "/mdr/adam/adamig-1-1/datastructures/ADSL/varsets/Identifier",
      "ADSL Identifier Variables",
      "Variable Set"
    );
  }

  return adam_varset_ref_element;
}


#ifdef adam_varset_ref_element_MAIN

void test_adam_varset_ref_element(int include_optional) {
    adam_varset_ref_element_t* adam_varset_ref_element_1 = instantiate_adam_varset_ref_element(include_optional);

	cJSON* jsonadam_varset_ref_element_1 = adam_varset_ref_element_convertToJSON(adam_varset_ref_element_1);
	printf("adam_varset_ref_element :\n%s\n", cJSON_Print(jsonadam_varset_ref_element_1));
	adam_varset_ref_element_t* adam_varset_ref_element_2 = adam_varset_ref_element_parseFromJSON(jsonadam_varset_ref_element_1);
	cJSON* jsonadam_varset_ref_element_2 = adam_varset_ref_element_convertToJSON(adam_varset_ref_element_2);
	printf("repeating adam_varset_ref_element:\n%s\n", cJSON_Print(jsonadam_varset_ref_element_2));
}

int main() {
  test_adam_varset_ref_element(1);
  test_adam_varset_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_varset_ref_element_MAIN
#endif // adam_varset_ref_element_TEST
