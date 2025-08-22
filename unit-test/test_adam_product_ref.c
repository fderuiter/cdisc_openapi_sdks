#ifndef adam_product_ref_TEST
#define adam_product_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_product_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_product_ref.h"
adam_product_ref_t* instantiate_adam_product_ref(int include_optional);



adam_product_ref_t* instantiate_adam_product_ref(int include_optional) {
  adam_product_ref_t* adam_product_ref = NULL;
  if (include_optional) {
    adam_product_ref = adam_product_ref_create(
      "/mdr/adam/adamig-1-1",
      "Analysis Data Model Implementation Guide Version 1.1",
      "Implementation Guide"
    );
  } else {
    adam_product_ref = adam_product_ref_create(
      "/mdr/adam/adamig-1-1",
      "Analysis Data Model Implementation Guide Version 1.1",
      "Implementation Guide"
    );
  }

  return adam_product_ref;
}


#ifdef adam_product_ref_MAIN

void test_adam_product_ref(int include_optional) {
    adam_product_ref_t* adam_product_ref_1 = instantiate_adam_product_ref(include_optional);

	cJSON* jsonadam_product_ref_1 = adam_product_ref_convertToJSON(adam_product_ref_1);
	printf("adam_product_ref :\n%s\n", cJSON_Print(jsonadam_product_ref_1));
	adam_product_ref_t* adam_product_ref_2 = adam_product_ref_parseFromJSON(jsonadam_product_ref_1);
	cJSON* jsonadam_product_ref_2 = adam_product_ref_convertToJSON(adam_product_ref_2);
	printf("repeating adam_product_ref:\n%s\n", cJSON_Print(jsonadam_product_ref_2));
}

int main() {
  test_adam_product_ref(1);
  test_adam_product_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_product_ref_MAIN
#endif // adam_product_ref_TEST
