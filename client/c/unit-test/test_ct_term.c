#ifndef ct_term_TEST
#define ct_term_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_term_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_term.h"
ct_term_t* instantiate_ct_term(int include_optional);

#include "test_ct_term_links.c"


ct_term_t* instantiate_ct_term(int include_optional) {
  ct_term_t* ct_term = NULL;
  if (include_optional) {
    ct_term = ct_term_create(
      "C64796",
      "Hematocrit",
      "The percentage of a whole blood specimen that is composed of red blood cells (erythrocytes).",
      "Hematocrit Measurement",
      ["EVF","Erythrocyte Volume Fraction","Hematocrit","PCV","Packed Cell Volume"],
       // false, not to have infinite recursion
      instantiate_ct_term_links(0)
    );
  } else {
    ct_term = ct_term_create(
      "C64796",
      "Hematocrit",
      "The percentage of a whole blood specimen that is composed of red blood cells (erythrocytes).",
      "Hematocrit Measurement",
      ["EVF","Erythrocyte Volume Fraction","Hematocrit","PCV","Packed Cell Volume"],
      NULL
    );
  }

  return ct_term;
}


#ifdef ct_term_MAIN

void test_ct_term(int include_optional) {
    ct_term_t* ct_term_1 = instantiate_ct_term(include_optional);

	cJSON* jsonct_term_1 = ct_term_convertToJSON(ct_term_1);
	printf("ct_term :\n%s\n", cJSON_Print(jsonct_term_1));
	ct_term_t* ct_term_2 = ct_term_parseFromJSON(jsonct_term_1);
	cJSON* jsonct_term_2 = ct_term_convertToJSON(ct_term_2);
	printf("repeating ct_term:\n%s\n", cJSON_Print(jsonct_term_2));
}

int main() {
  test_ct_term(1);
  test_ct_term(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_term_MAIN
#endif // ct_term_TEST
