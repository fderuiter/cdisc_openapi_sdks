#ifndef sendig_classes_links_TEST
#define sendig_classes_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_classes_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_classes_links.h"
sendig_classes_links_t* instantiate_sendig_classes_links(int include_optional);

#include "test_sendig_classes_ref.c"
#include "test_sendig_classes_ref.c"


sendig_classes_links_t* instantiate_sendig_classes_links(int include_optional) {
  sendig_classes_links_t* sendig_classes_links = NULL;
  if (include_optional) {
    sendig_classes_links = sendig_classes_links_create(
       // false, not to have infinite recursion
      instantiate_sendig_classes_ref(0),
       // false, not to have infinite recursion
      instantiate_sendig_classes_ref(0),
      list_createList()
    );
  } else {
    sendig_classes_links = sendig_classes_links_create(
      NULL,
      NULL,
      list_createList()
    );
  }

  return sendig_classes_links;
}


#ifdef sendig_classes_links_MAIN

void test_sendig_classes_links(int include_optional) {
    sendig_classes_links_t* sendig_classes_links_1 = instantiate_sendig_classes_links(include_optional);

	cJSON* jsonsendig_classes_links_1 = sendig_classes_links_convertToJSON(sendig_classes_links_1);
	printf("sendig_classes_links :\n%s\n", cJSON_Print(jsonsendig_classes_links_1));
	sendig_classes_links_t* sendig_classes_links_2 = sendig_classes_links_parseFromJSON(jsonsendig_classes_links_1);
	cJSON* jsonsendig_classes_links_2 = sendig_classes_links_convertToJSON(sendig_classes_links_2);
	printf("repeating sendig_classes_links:\n%s\n", cJSON_Print(jsonsendig_classes_links_2));
}

int main() {
  test_sendig_classes_links(1);
  test_sendig_classes_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_classes_links_MAIN
#endif // sendig_classes_links_TEST
