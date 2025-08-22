#ifndef _mdr_search_scopes_get_200_response_TEST
#define _mdr_search_scopes_get_200_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define _mdr_search_scopes_get_200_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/_mdr_search_scopes_get_200_response.h"
_mdr_search_scopes_get_200_response_t* instantiate__mdr_search_scopes_get_200_response(int include_optional);



_mdr_search_scopes_get_200_response_t* instantiate__mdr_search_scopes_get_200_response(int include_optional) {
  _mdr_search_scopes_get_200_response_t* _mdr_search_scopes_get_200_response = NULL;
  if (include_optional) {
    _mdr_search_scopes_get_200_response = _mdr_search_scopes_get_200_response_create(
      list_createList()
    );
  } else {
    _mdr_search_scopes_get_200_response = _mdr_search_scopes_get_200_response_create(
      list_createList()
    );
  }

  return _mdr_search_scopes_get_200_response;
}


#ifdef _mdr_search_scopes_get_200_response_MAIN

void test__mdr_search_scopes_get_200_response(int include_optional) {
    _mdr_search_scopes_get_200_response_t* _mdr_search_scopes_get_200_response_1 = instantiate__mdr_search_scopes_get_200_response(include_optional);

	cJSON* json_mdr_search_scopes_get_200_response_1 = _mdr_search_scopes_get_200_response_convertToJSON(_mdr_search_scopes_get_200_response_1);
	printf("_mdr_search_scopes_get_200_response :\n%s\n", cJSON_Print(json_mdr_search_scopes_get_200_response_1));
	_mdr_search_scopes_get_200_response_t* _mdr_search_scopes_get_200_response_2 = _mdr_search_scopes_get_200_response_parseFromJSON(json_mdr_search_scopes_get_200_response_1);
	cJSON* json_mdr_search_scopes_get_200_response_2 = _mdr_search_scopes_get_200_response_convertToJSON(_mdr_search_scopes_get_200_response_2);
	printf("repeating _mdr_search_scopes_get_200_response:\n%s\n", cJSON_Print(json_mdr_search_scopes_get_200_response_2));
}

int main() {
  test__mdr_search_scopes_get_200_response(1);
  test__mdr_search_scopes_get_200_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // _mdr_search_scopes_get_200_response_MAIN
#endif // _mdr_search_scopes_get_200_response_TEST
