#ifndef adam_datastructure_ref_element_TEST
#define adam_datastructure_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_datastructure_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_datastructure_ref_element.h"
adam_datastructure_ref_element_t* instantiate_adam_datastructure_ref_element(int include_optional);



adam_datastructure_ref_element_t* instantiate_adam_datastructure_ref_element(int include_optional) {
  adam_datastructure_ref_element_t* adam_datastructure_ref_element = NULL;
  if (include_optional) {
    adam_datastructure_ref_element = adam_datastructure_ref_element_create(
      "/mdr/adam/adamig-1-1/datastructures/ADSL",
      "Subject-Level Analysis Dataset Structure",
      "Data Structure"
    );
  } else {
    adam_datastructure_ref_element = adam_datastructure_ref_element_create(
      "/mdr/adam/adamig-1-1/datastructures/ADSL",
      "Subject-Level Analysis Dataset Structure",
      "Data Structure"
    );
  }

  return adam_datastructure_ref_element;
}


#ifdef adam_datastructure_ref_element_MAIN

void test_adam_datastructure_ref_element(int include_optional) {
    adam_datastructure_ref_element_t* adam_datastructure_ref_element_1 = instantiate_adam_datastructure_ref_element(include_optional);

	cJSON* jsonadam_datastructure_ref_element_1 = adam_datastructure_ref_element_convertToJSON(adam_datastructure_ref_element_1);
	printf("adam_datastructure_ref_element :\n%s\n", cJSON_Print(jsonadam_datastructure_ref_element_1));
	adam_datastructure_ref_element_t* adam_datastructure_ref_element_2 = adam_datastructure_ref_element_parseFromJSON(jsonadam_datastructure_ref_element_1);
	cJSON* jsonadam_datastructure_ref_element_2 = adam_datastructure_ref_element_convertToJSON(adam_datastructure_ref_element_2);
	printf("repeating adam_datastructure_ref_element:\n%s\n", cJSON_Print(jsonadam_datastructure_ref_element_2));
}

int main() {
  test_adam_datastructure_ref_element(1);
  test_adam_datastructure_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_datastructure_ref_element_MAIN
#endif // adam_datastructure_ref_element_TEST
