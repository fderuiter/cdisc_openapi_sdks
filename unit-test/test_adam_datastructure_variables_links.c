#ifndef adam_datastructure_variables_links_TEST
#define adam_datastructure_variables_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_datastructure_variables_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_datastructure_variables_links.h"
adam_datastructure_variables_links_t* instantiate_adam_datastructure_variables_links(int include_optional);

#include "test_adam_datastructure_variables_ref.c"
#include "test_adam_product_ref.c"
#include "test_adam_datastructure_variables_ref.c"


adam_datastructure_variables_links_t* instantiate_adam_datastructure_variables_links(int include_optional) {
  adam_datastructure_variables_links_t* adam_datastructure_variables_links = NULL;
  if (include_optional) {
    adam_datastructure_variables_links = adam_datastructure_variables_links_create(
       // false, not to have infinite recursion
      instantiate_adam_datastructure_variables_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_product_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_datastructure_variables_ref(0),
      list_createList()
    );
  } else {
    adam_datastructure_variables_links = adam_datastructure_variables_links_create(
      NULL,
      NULL,
      NULL,
      list_createList()
    );
  }

  return adam_datastructure_variables_links;
}


#ifdef adam_datastructure_variables_links_MAIN

void test_adam_datastructure_variables_links(int include_optional) {
    adam_datastructure_variables_links_t* adam_datastructure_variables_links_1 = instantiate_adam_datastructure_variables_links(include_optional);

	cJSON* jsonadam_datastructure_variables_links_1 = adam_datastructure_variables_links_convertToJSON(adam_datastructure_variables_links_1);
	printf("adam_datastructure_variables_links :\n%s\n", cJSON_Print(jsonadam_datastructure_variables_links_1));
	adam_datastructure_variables_links_t* adam_datastructure_variables_links_2 = adam_datastructure_variables_links_parseFromJSON(jsonadam_datastructure_variables_links_1);
	cJSON* jsonadam_datastructure_variables_links_2 = adam_datastructure_variables_links_convertToJSON(adam_datastructure_variables_links_2);
	printf("repeating adam_datastructure_variables_links:\n%s\n", cJSON_Print(jsonadam_datastructure_variables_links_2));
}

int main() {
  test_adam_datastructure_variables_links(1);
  test_adam_datastructure_variables_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_datastructure_variables_links_MAIN
#endif // adam_datastructure_variables_links_TEST
