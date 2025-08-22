#ifndef adam_variable_links_TEST
#define adam_variable_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_variable_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_variable_links.h"
adam_variable_links_t* instantiate_adam_variable_links(int include_optional);

#include "test_adam_variable_ref.c"
#include "test_root_ct_codelist_ref.c"
#include "test_adam_product_ref.c"
#include "test_adam_datastructure_ref.c"
#include "test_adam_varset_ref.c"
#include "test_adam_variable_ref.c"


adam_variable_links_t* instantiate_adam_variable_links(int include_optional) {
  adam_variable_links_t* adam_variable_links = NULL;
  if (include_optional) {
    adam_variable_links = adam_variable_links_create(
       // false, not to have infinite recursion
      instantiate_adam_variable_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_codelist_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_product_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_datastructure_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_varset_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_variable_ref(0)
    );
  } else {
    adam_variable_links = adam_variable_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return adam_variable_links;
}


#ifdef adam_variable_links_MAIN

void test_adam_variable_links(int include_optional) {
    adam_variable_links_t* adam_variable_links_1 = instantiate_adam_variable_links(include_optional);

	cJSON* jsonadam_variable_links_1 = adam_variable_links_convertToJSON(adam_variable_links_1);
	printf("adam_variable_links :\n%s\n", cJSON_Print(jsonadam_variable_links_1));
	adam_variable_links_t* adam_variable_links_2 = adam_variable_links_parseFromJSON(jsonadam_variable_links_1);
	cJSON* jsonadam_variable_links_2 = adam_variable_links_convertToJSON(adam_variable_links_2);
	printf("repeating adam_variable_links:\n%s\n", cJSON_Print(jsonadam_variable_links_2));
}

int main() {
  test_adam_variable_links(1);
  test_adam_variable_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_variable_links_MAIN
#endif // adam_variable_links_TEST
