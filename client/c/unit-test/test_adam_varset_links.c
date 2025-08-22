#ifndef adam_varset_links_TEST
#define adam_varset_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_varset_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_varset_links.h"
adam_varset_links_t* instantiate_adam_varset_links(int include_optional);

#include "test_adam_varset_ref.c"
#include "test_adam_product_ref.c"
#include "test_adam_datastructure_ref.c"
#include "test_adam_varset_ref.c"


adam_varset_links_t* instantiate_adam_varset_links(int include_optional) {
  adam_varset_links_t* adam_varset_links = NULL;
  if (include_optional) {
    adam_varset_links = adam_varset_links_create(
       // false, not to have infinite recursion
      instantiate_adam_varset_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_product_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_datastructure_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_varset_ref(0)
    );
  } else {
    adam_varset_links = adam_varset_links_create(
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return adam_varset_links;
}


#ifdef adam_varset_links_MAIN

void test_adam_varset_links(int include_optional) {
    adam_varset_links_t* adam_varset_links_1 = instantiate_adam_varset_links(include_optional);

	cJSON* jsonadam_varset_links_1 = adam_varset_links_convertToJSON(adam_varset_links_1);
	printf("adam_varset_links :\n%s\n", cJSON_Print(jsonadam_varset_links_1));
	adam_varset_links_t* adam_varset_links_2 = adam_varset_links_parseFromJSON(jsonadam_varset_links_1);
	cJSON* jsonadam_varset_links_2 = adam_varset_links_convertToJSON(adam_varset_links_2);
	printf("repeating adam_varset_links:\n%s\n", cJSON_Print(jsonadam_varset_links_2));
}

int main() {
  test_adam_varset_links(1);
  test_adam_varset_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_varset_links_MAIN
#endif // adam_varset_links_TEST
