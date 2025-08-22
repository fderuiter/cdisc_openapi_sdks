/*
 * xml_qrs_items.h
 *
 * 
 */

#ifndef _xml_qrs_items_H_
#define _xml_qrs_items_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_qrs_items_t xml_qrs_items_t;

#include "qrs_items.h"



typedef struct xml_qrs_items_t {
    struct qrs_items_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_qrs_items_t;

__attribute__((deprecated)) xml_qrs_items_t *xml_qrs_items_create(
    qrs_items_t *self
);

void xml_qrs_items_free(xml_qrs_items_t *xml_qrs_items);

xml_qrs_items_t *xml_qrs_items_parseFromJSON(cJSON *xml_qrs_itemsJSON);

cJSON *xml_qrs_items_convertToJSON(xml_qrs_items_t *xml_qrs_items);

#endif /* _xml_qrs_items_H_ */

