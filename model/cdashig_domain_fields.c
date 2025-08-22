#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_domain_fields.h"



static cdashig_domain_fields_t *cdashig_domain_fields_create_internal(
    char *ordinal,
    char *name,
    char *label,
    cdashig_domain_fields_links_t *_links
    ) {
    cdashig_domain_fields_t *cdashig_domain_fields_local_var = malloc(sizeof(cdashig_domain_fields_t));
    if (!cdashig_domain_fields_local_var) {
        return NULL;
    }
    cdashig_domain_fields_local_var->ordinal = ordinal;
    cdashig_domain_fields_local_var->name = name;
    cdashig_domain_fields_local_var->label = label;
    cdashig_domain_fields_local_var->_links = _links;

    cdashig_domain_fields_local_var->_library_owned = 1;
    return cdashig_domain_fields_local_var;
}

__attribute__((deprecated)) cdashig_domain_fields_t *cdashig_domain_fields_create(
    char *ordinal,
    char *name,
    char *label,
    cdashig_domain_fields_links_t *_links
    ) {
    return cdashig_domain_fields_create_internal (
        ordinal,
        name,
        label,
        _links
        );
}

void cdashig_domain_fields_free(cdashig_domain_fields_t *cdashig_domain_fields) {
    if(NULL == cdashig_domain_fields){
        return ;
    }
    if(cdashig_domain_fields->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_domain_fields_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_domain_fields->ordinal) {
        free(cdashig_domain_fields->ordinal);
        cdashig_domain_fields->ordinal = NULL;
    }
    if (cdashig_domain_fields->name) {
        free(cdashig_domain_fields->name);
        cdashig_domain_fields->name = NULL;
    }
    if (cdashig_domain_fields->label) {
        free(cdashig_domain_fields->label);
        cdashig_domain_fields->label = NULL;
    }
    if (cdashig_domain_fields->_links) {
        cdashig_domain_fields_links_free(cdashig_domain_fields->_links);
        cdashig_domain_fields->_links = NULL;
    }
    free(cdashig_domain_fields);
}

cJSON *cdashig_domain_fields_convertToJSON(cdashig_domain_fields_t *cdashig_domain_fields) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_domain_fields->ordinal
    if(cdashig_domain_fields->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdashig_domain_fields->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_fields->name
    if(cdashig_domain_fields->name) {
    if(cJSON_AddStringToObject(item, "name", cdashig_domain_fields->name) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_fields->label
    if(cdashig_domain_fields->label) {
    if(cJSON_AddStringToObject(item, "label", cdashig_domain_fields->label) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_fields->_links
    if(cdashig_domain_fields->_links) {
    cJSON *_links_local_JSON = cdashig_domain_fields_links_convertToJSON(cdashig_domain_fields->_links);
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

cdashig_domain_fields_t *cdashig_domain_fields_parseFromJSON(cJSON *cdashig_domain_fieldsJSON){

    cdashig_domain_fields_t *cdashig_domain_fields_local_var = NULL;

    // define the local variable for cdashig_domain_fields->_links
    cdashig_domain_fields_links_t *_links_local_nonprim = NULL;

    // cdashig_domain_fields->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldsJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdashig_domain_fields->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdashig_domain_fields->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdashig_domain_fields->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_domain_fields_links_parseFromJSON(_links); //nonprimitive
    }


    cdashig_domain_fields_local_var = cdashig_domain_fields_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdashig_domain_fields_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_domain_fields_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
