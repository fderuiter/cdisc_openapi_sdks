#ifndef default_search_response_hits_inner_TEST
#define default_search_response_hits_inner_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define default_search_response_hits_inner_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/default_search_response_hits_inner.h"
default_search_response_hits_inner_t* instantiate_default_search_response_hits_inner(int include_optional);



default_search_response_hits_inner_t* instantiate_default_search_response_hits_inner(int include_optional) {
  default_search_response_hits_inner_t* default_search_response_hits_inner = NULL;
  if (include_optional) {
    default_search_response_hits_inner = default_search_response_hits_inner_create(
      "0",
      "0"
    );
  } else {
    default_search_response_hits_inner = default_search_response_hits_inner_create(
      "0",
      "0"
    );
  }

  return default_search_response_hits_inner;
}


#ifdef default_search_response_hits_inner_MAIN

void test_default_search_response_hits_inner(int include_optional) {
    default_search_response_hits_inner_t* default_search_response_hits_inner_1 = instantiate_default_search_response_hits_inner(include_optional);

	cJSON* jsondefault_search_response_hits_inner_1 = default_search_response_hits_inner_convertToJSON(default_search_response_hits_inner_1);
	printf("default_search_response_hits_inner :\n%s\n", cJSON_Print(jsondefault_search_response_hits_inner_1));
	default_search_response_hits_inner_t* default_search_response_hits_inner_2 = default_search_response_hits_inner_parseFromJSON(jsondefault_search_response_hits_inner_1);
	cJSON* jsondefault_search_response_hits_inner_2 = default_search_response_hits_inner_convertToJSON(default_search_response_hits_inner_2);
	printf("repeating default_search_response_hits_inner:\n%s\n", cJSON_Print(jsondefault_search_response_hits_inner_2));
}

int main() {
  test_default_search_response_hits_inner(1);
  test_default_search_response_hits_inner(0);

  printf("Hello world \n");
  return 0;
}

#endif // default_search_response_hits_inner_MAIN
#endif // default_search_response_hits_inner_TEST
