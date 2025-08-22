#ifndef default_search_response_TEST
#define default_search_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define default_search_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/default_search_response.h"
default_search_response_t* instantiate_default_search_response(int include_optional);



default_search_response_t* instantiate_default_search_response(int include_optional) {
  default_search_response_t* default_search_response = NULL;
  if (include_optional) {
    default_search_response = default_search_response_create(
      list_createList(),
      1
    );
  } else {
    default_search_response = default_search_response_create(
      list_createList(),
      1
    );
  }

  return default_search_response;
}


#ifdef default_search_response_MAIN

void test_default_search_response(int include_optional) {
    default_search_response_t* default_search_response_1 = instantiate_default_search_response(include_optional);

	cJSON* jsondefault_search_response_1 = default_search_response_convertToJSON(default_search_response_1);
	printf("default_search_response :\n%s\n", cJSON_Print(jsondefault_search_response_1));
	default_search_response_t* default_search_response_2 = default_search_response_parseFromJSON(jsondefault_search_response_1);
	cJSON* jsondefault_search_response_2 = default_search_response_convertToJSON(default_search_response_2);
	printf("repeating default_search_response:\n%s\n", cJSON_Print(jsondefault_search_response_2));
}

int main() {
  test_default_search_response(1);
  test_default_search_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // default_search_response_MAIN
#endif // default_search_response_TEST
