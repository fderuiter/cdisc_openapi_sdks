#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_class_domains.h"



static cdash_class_domains_t *cdash_class_domains_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdash_class_domains_links_t *_links
    ) {
    cdash_class_domains_t *cdash_class_domains_local_var = malloc(sizeof(cdash_class_domains_t));
    if (!cdash_class_domains_local_var) {
        return NULL;
    }
    cdash_class_domains_local_var->ordinal = ordinal;
    cdash_class_domains_local_var->name = name;
    cdash_class_domains_local_var->label = label;
    cdash_class_domains_local_var->description = description;
    cdash_class_domains_local_var->_links = _links;

    cdash_class_domains_local_var->_library_owned = 1;
    return cdash_class_domains_local_var;
}

__attribute__((deprecated)) cdash_class_domains_t *cdash_class_domains_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdash_class_domains_links_t *_links
    ) {
    return cdash_class_domains_create_internal (
        ordinal,
        name,
        label,
        description,
        _links
        );
}

void cdash_class_domains_free(cdash_class_domains_t *cdash_class_domains) {
    if(NULL == cdash_class_domains){
        return ;
    }
    if(cdash_class_domains->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_class_domains_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_class_domains->ordinal) {
        free(cdash_class_domains->ordinal);
        cdash_class_domains->ordinal = NULL;
    }
    if (cdash_class_domains->name) {
        free(cdash_class_domains->name);
        cdash_class_domains->name = NULL;
    }
    if (cdash_class_domains->label) {
        free(cdash_class_domains->label);
        cdash_class_domains->label = NULL;
    }
    if (cdash_class_domains->description) {
        free(cdash_class_domains->description);
        cdash_class_domains->description = NULL;
    }
    if (cdash_class_domains->_links) {
        cdash_class_domains_links_free(cdash_class_domains->_links);
        cdash_class_domains->_links = NULL;
    }
    free(cdash_class_domains);
}

cJSON *cdash_class_domains_convertToJSON(cdash_class_domains_t *cdash_class_domains) {
    cJSON *item = cJSON_CreateObject();

    // cdash_class_domains->ordinal
    if(cdash_class_domains->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdash_class_domains->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_domains->name
    if(cdash_class_domains->name) {
    if(cJSON_AddStringToObject(item, "name", cdash_class_domains->name) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_domains->label
    if(cdash_class_domains->label) {
    if(cJSON_AddStringToObject(item, "label", cdash_class_domains->label) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_domains->description
    if(cdash_class_domains->description) {
    if(cJSON_AddStringToObject(item, "description", cdash_class_domains->description) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_domains->_links
    if(cdash_class_domains->_links) {
    cJSON *_links_local_JSON = cdash_class_domains_links_convertToJSON(cdash_class_domains->_links);
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

cdash_class_domains_t *cdash_class_domains_parseFromJSON(cJSON *cdash_class_domainsJSON){

    cdash_class_domains_t *cdash_class_domains_local_var = NULL;

    // define the local variable for cdash_class_domains->_links
    cdash_class_domains_links_t *_links_local_nonprim = NULL;

    // cdash_class_domains->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdash_class_domainsJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdash_class_domains->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdash_class_domainsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdash_class_domains->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdash_class_domainsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdash_class_domains->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(cdash_class_domainsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // cdash_class_domains->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdash_class_domainsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdash_class_domains_links_parseFromJSON(_links); //nonprimitive
    }


    cdash_class_domains_local_var = cdash_class_domains_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdash_class_domains_local_var;
end:
    if (_links_local_nonprim) {
        cdash_class_domains_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
