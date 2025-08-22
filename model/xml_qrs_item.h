/*
 * xml_qrs_item.h
 *
 * 
 */

#ifndef _xml_qrs_item_H_
#define _xml_qrs_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_qrs_item_t xml_qrs_item_t;

#include "qrs_item.h"



typedef struct xml_qrs_item_t {
    struct qrs_item_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_qrs_item_t;

__attribute__((deprecated)) xml_qrs_item_t *xml_qrs_item_create(
    qrs_item_t *self
);

void xml_qrs_item_free(xml_qrs_item_t *xml_qrs_item);

xml_qrs_item_t *xml_qrs_item_parseFromJSON(cJSON *xml_qrs_itemJSON);

cJSON *xml_qrs_item_convertToJSON(xml_qrs_item_t *xml_qrs_item);

#endif /* _xml_qrs_item_H_ */

