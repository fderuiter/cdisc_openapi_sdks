#ifndef ct_package_term_TEST
#define ct_package_term_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_package_term_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_package_term.h"
ct_package_term_t* instantiate_ct_package_term(int include_optional);



ct_package_term_t* instantiate_ct_package_term(int include_optional) {
  ct_package_term_t* ct_package_term = NULL;
  if (include_optional) {
    ct_package_term = ct_package_term_create(
      "C64796",
      "Hematocrit",
      "The percentage of a whole blood specimen that is composed of red blood cells (erythrocytes).",
      "Hematocrit Measurement",
      ["EVF","Erythrocyte Volume Fraction","Hematocrit","PCV","Packed Cell Volume"]
    );
  } else {
    ct_package_term = ct_package_term_create(
      "C64796",
      "Hematocrit",
      "The percentage of a whole blood specimen that is composed of red blood cells (erythrocytes).",
      "Hematocrit Measurement",
      ["EVF","Erythrocyte Volume Fraction","Hematocrit","PCV","Packed Cell Volume"]
    );
  }

  return ct_package_term;
}


#ifdef ct_package_term_MAIN

void test_ct_package_term(int include_optional) {
    ct_package_term_t* ct_package_term_1 = instantiate_ct_package_term(include_optional);

	cJSON* jsonct_package_term_1 = ct_package_term_convertToJSON(ct_package_term_1);
	printf("ct_package_term :\n%s\n", cJSON_Print(jsonct_package_term_1));
	ct_package_term_t* ct_package_term_2 = ct_package_term_parseFromJSON(jsonct_package_term_1);
	cJSON* jsonct_package_term_2 = ct_package_term_convertToJSON(ct_package_term_2);
	printf("repeating ct_package_term:\n%s\n", cJSON_Print(jsonct_package_term_2));
}

int main() {
  test_ct_package_term(1);
  test_ct_package_term(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_package_term_MAIN
#endif // ct_package_term_TEST
