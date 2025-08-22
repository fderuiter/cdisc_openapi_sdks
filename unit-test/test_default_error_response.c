#ifndef default_error_response_TEST
#define default_error_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define default_error_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/default_error_response.h"
default_error_response_t* instantiate_default_error_response(int include_optional);



default_error_response_t* instantiate_default_error_response(int include_optional) {
  default_error_response_t* default_error_response = NULL;
  if (include_optional) {
    default_error_response = default_error_response_create(
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    default_error_response = default_error_response_create(
      "0",
      "0",
      "0",
      "0"
    );
  }

  return default_error_response;
}


#ifdef default_error_response_MAIN

void test_default_error_response(int include_optional) {
    default_error_response_t* default_error_response_1 = instantiate_default_error_response(include_optional);

	cJSON* jsondefault_error_response_1 = default_error_response_convertToJSON(default_error_response_1);
	printf("default_error_response :\n%s\n", cJSON_Print(jsondefault_error_response_1));
	default_error_response_t* default_error_response_2 = default_error_response_parseFromJSON(jsondefault_error_response_1);
	cJSON* jsondefault_error_response_2 = default_error_response_convertToJSON(default_error_response_2);
	printf("repeating default_error_response:\n%s\n", cJSON_Print(jsondefault_error_response_2));
}

int main() {
  test_default_error_response(1);
  test_default_error_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // default_error_response_MAIN
#endif // default_error_response_TEST
