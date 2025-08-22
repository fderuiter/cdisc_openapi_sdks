#ifndef scope_values_TEST
#define scope_values_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define scope_values_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/scope_values.h"
scope_values_t* instantiate_scope_values(int include_optional);



scope_values_t* instantiate_scope_values(int include_optional) {
  scope_values_t* scope_values = NULL;
  if (include_optional) {
    scope_values = scope_values_create(
      1,
      false,
      ["Terminology"]
    );
  } else {
    scope_values = scope_values_create(
      1,
      false,
      ["Terminology"]
    );
  }

  return scope_values;
}


#ifdef scope_values_MAIN

void test_scope_values(int include_optional) {
    scope_values_t* scope_values_1 = instantiate_scope_values(include_optional);

	cJSON* jsonscope_values_1 = scope_values_convertToJSON(scope_values_1);
	printf("scope_values :\n%s\n", cJSON_Print(jsonscope_values_1));
	scope_values_t* scope_values_2 = scope_values_parseFromJSON(jsonscope_values_1);
	cJSON* jsonscope_values_2 = scope_values_convertToJSON(scope_values_2);
	printf("repeating scope_values:\n%s\n", cJSON_Print(jsonscope_values_2));
}

int main() {
  test_scope_values(1);
  test_scope_values(0);

  printf("Hello world \n");
  return 0;
}

#endif // scope_values_MAIN
#endif // scope_values_TEST
