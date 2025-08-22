#ifndef default_search_scopes_TEST
#define default_search_scopes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define default_search_scopes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/default_search_scopes.h"
default_search_scopes_t* instantiate_default_search_scopes(int include_optional);



default_search_scopes_t* instantiate_default_search_scopes(int include_optional) {
  default_search_scopes_t* default_search_scopes = NULL;
  if (include_optional) {
    default_search_scopes = default_search_scopes_create(
    );
  } else {
    default_search_scopes = default_search_scopes_create(
    );
  }

  return default_search_scopes;
}


#ifdef default_search_scopes_MAIN

void test_default_search_scopes(int include_optional) {
    default_search_scopes_t* default_search_scopes_1 = instantiate_default_search_scopes(include_optional);

	cJSON* jsondefault_search_scopes_1 = default_search_scopes_convertToJSON(default_search_scopes_1);
	printf("default_search_scopes :\n%s\n", cJSON_Print(jsondefault_search_scopes_1));
	default_search_scopes_t* default_search_scopes_2 = default_search_scopes_parseFromJSON(jsondefault_search_scopes_1);
	cJSON* jsondefault_search_scopes_2 = default_search_scopes_convertToJSON(default_search_scopes_2);
	printf("repeating default_search_scopes:\n%s\n", cJSON_Print(jsondefault_search_scopes_2));
}

int main() {
  test_default_search_scopes(1);
  test_default_search_scopes(0);

  printf("Hello world \n");
  return 0;
}

#endif // default_search_scopes_MAIN
#endif // default_search_scopes_TEST
