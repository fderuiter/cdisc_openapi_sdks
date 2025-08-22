#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_domain_fields.h"



static cdash_domain_fields_t *cdash_domain_fields_create_internal(
    char *ordinal,
    char *name,
    char *label,
    cdash_domain_fields_links_t *_links
    ) {
    cdash_domain_fields_t *cdash_domain_fields_local_var = malloc(sizeof(cdash_domain_fields_t));
    if (!cdash_domain_fields_local_var) {
        return NULL;
    }
    cdash_domain_fields_local_var->ordinal = ordinal;
    cdash_domain_fields_local_var->name = name;
    cdash_domain_fields_local_var->label = label;
    cdash_domain_fields_local_var->_links = _links;

    cdash_domain_fields_local_var->_library_owned = 1;
    return cdash_domain_fields_local_var;
}

__attribute__((deprecated)) cdash_domain_fields_t *cdash_domain_fields_create(
    char *ordinal,
    char *name,
    char *label,
    cdash_domain_fields_links_t *_links
    ) {
    return cdash_domain_fields_create_internal (
        ordinal,
        name,
        label,
        _links
        );
}

void cdash_domain_fields_free(cdash_domain_fields_t *cdash_domain_fields) {
    if(NULL == cdash_domain_fields){
        return ;
    }
    if(cdash_domain_fields->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_domain_fields_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_domain_fields->ordinal) {
        free(cdash_domain_fields->ordinal);
        cdash_domain_fields->ordinal = NULL;
    }
    if (cdash_domain_fields->name) {
        free(cdash_domain_fields->name);
        cdash_domain_fields->name = NULL;
    }
    if (cdash_domain_fields->label) {
        free(cdash_domain_fields->label);
        cdash_domain_fields->label = NULL;
    }
    if (cdash_domain_fields->_links) {
        cdash_domain_fields_links_free(cdash_domain_fields->_links);
        cdash_domain_fields->_links = NULL;
    }
    free(cdash_domain_fields);
}

cJSON *cdash_domain_fields_convertToJSON(cdash_domain_fields_t *cdash_domain_fields) {
    cJSON *item = cJSON_CreateObject();

    // cdash_domain_fields->ordinal
    if(cdash_domain_fields->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdash_domain_fields->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdash_domain_fields->name
    if(cdash_domain_fields->name) {
    if(cJSON_AddStringToObject(item, "name", cdash_domain_fields->name) == NULL) {
    goto fail; //String
    }
    }


    // cdash_domain_fields->label
    if(cdash_domain_fields->label) {
    if(cJSON_AddStringToObject(item, "label", cdash_domain_fields->label) == NULL) {
    goto fail; //String
    }
    }


    // cdash_domain_fields->_links
    if(cdash_domain_fields->_links) {
    cJSON *_links_local_JSON = cdash_domain_fields_links_convertToJSON(cdash_domain_fields->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cdash_domain_fields_t *cdash_domain_fields_parseFromJSON(cJSON *cdash_domain_fieldsJSON){

    cdash_domain_fields_t *cdash_domain_fields_local_var = NULL;

    // define the local variable for cdash_domain_fields->_links
    cdash_domain_fields_links_t *_links_local_nonprim = NULL;

    // cdash_domain_fields->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdash_domain_fieldsJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdash_domain_fields->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdash_domain_fieldsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdash_domain_fields->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdash_domain_fieldsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdash_domain_fields->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdash_domain_fieldsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdash_domain_fields_links_parseFromJSON(_links); //nonprimitive
    }


    cdash_domain_fields_local_var = cdash_domain_fields_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdash_domain_fields_local_var;
end:
    if (_links_local_nonprim) {
        cdash_domain_fields_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
