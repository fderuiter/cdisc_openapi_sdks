#ifndef sendig_product_ref_element_TEST
#define sendig_product_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_product_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_product_ref_element.h"
sendig_product_ref_element_t* instantiate_sendig_product_ref_element(int include_optional);



sendig_product_ref_element_t* instantiate_sendig_product_ref_element(int include_optional) {
  sendig_product_ref_element_t* sendig_product_ref_element = NULL;
  if (include_optional) {
    sendig_product_ref_element = sendig_product_ref_element_create(
      "/mdr/sendig/3-1",
      "Standard for Exchange of Nonclinical Data Implementation Guide: Nonclinical Studies Version 3.1 (Final)",
      "Implementation Guide"
    );
  } else {
    sendig_product_ref_element = sendig_product_ref_element_create(
      "/mdr/sendig/3-1",
      "Standard for Exchange of Nonclinical Data Implementation Guide: Nonclinical Studies Version 3.1 (Final)",
      "Implementation Guide"
    );
  }

  return sendig_product_ref_element;
}


#ifdef sendig_product_ref_element_MAIN

void test_sendig_product_ref_element(int include_optional) {
    sendig_product_ref_element_t* sendig_product_ref_element_1 = instantiate_sendig_product_ref_element(include_optional);

	cJSON* jsonsendig_product_ref_element_1 = sendig_product_ref_element_convertToJSON(sendig_product_ref_element_1);
	printf("sendig_product_ref_element :\n%s\n", cJSON_Print(jsonsendig_product_ref_element_1));
	sendig_product_ref_element_t* sendig_product_ref_element_2 = sendig_product_ref_element_parseFromJSON(jsonsendig_product_ref_element_1);
	cJSON* jsonsendig_product_ref_element_2 = sendig_product_ref_element_convertToJSON(sendig_product_ref_element_2);
	printf("repeating sendig_product_ref_element:\n%s\n", cJSON_Print(jsonsendig_product_ref_element_2));
}

int main() {
  test_sendig_product_ref_element(1);
  test_sendig_product_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_product_ref_element_MAIN
#endif // sendig_product_ref_element_TEST
