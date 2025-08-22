#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "about.h"



static about_t *about_create_internal(
    about_links_t *_links,
    char *release_notes,
    char *api_documentation
    ) {
    about_t *about_local_var = malloc(sizeof(about_t));
    if (!about_local_var) {
        return NULL;
    }
    about_local_var->_links = _links;
    about_local_var->release_notes = release_notes;
    about_local_var->api_documentation = api_documentation;

    about_local_var->_library_owned = 1;
    return about_local_var;
}

__attribute__((deprecated)) about_t *about_create(
    about_links_t *_links,
    char *release_notes,
    char *api_documentation
    ) {
    return about_create_internal (
        _links,
        release_notes,
        api_documentation
        );
}

void about_free(about_t *about) {
    if(NULL == about){
        return ;
    }
    if(about->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "about_free");
        return ;
    }
    listEntry_t *listEntry;
    if (about->_links) {
        about_links_free(about->_links);
        about->_links = NULL;
    }
    if (about->release_notes) {
        free(about->release_notes);
        about->release_notes = NULL;
    }
    if (about->api_documentation) {
        free(about->api_documentation);
        about->api_documentation = NULL;
    }
    free(about);
}

cJSON *about_convertToJSON(about_t *about) {
    cJSON *item = cJSON_CreateObject();

    // about->_links
    if(about->_links) {
    cJSON *_links_local_JSON = about_links_convertToJSON(about->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // about->release_notes
    if(about->release_notes) {
    if(cJSON_AddStringToObject(item, "release-notes", about->release_notes) == NULL) {
    goto fail; //String
    }
    }


    // about->api_documentation
    if(about->api_documentation) {
    if(cJSON_AddStringToObject(item, "api-documentation", about->api_documentation) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

about_t *about_parseFromJSON(cJSON *aboutJSON){

    about_t *about_local_var = NULL;

    // define the local variable for about->_links
    about_links_t *_links_local_nonprim = NULL;

    // about->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(aboutJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = about_links_parseFromJSON(_links); //nonprimitive
    }

    // about->release_notes
    cJSON *release_notes = cJSON_GetObjectItemCaseSensitive(aboutJSON, "release-notes");
    if (cJSON_IsNull(release_notes)) {
        release_notes = NULL;
    }
    if (release_notes) { 
    if(!cJSON_IsString(release_notes) && !cJSON_IsNull(release_notes))
    {
    goto end; //String
    }
    }

    // about->api_documentation
    cJSON *api_documentation = cJSON_GetObjectItemCaseSensitive(aboutJSON, "api-documentation");
    if (cJSON_IsNull(api_documentation)) {
        api_documentation = NULL;
    }
    if (api_documentation) { 
    if(!cJSON_IsString(api_documentation) && !cJSON_IsNull(api_documentation))
    {
    goto end; //String
    }
    }


    about_local_var = about_create_internal (
        _links ? _links_local_nonprim : NULL,
        release_notes && !cJSON_IsNull(release_notes) ? strdup(release_notes->valuestring) : NULL,
        api_documentation && !cJSON_IsNull(api_documentation) ? strdup(api_documentation->valuestring) : NULL
        );

    return about_local_var;
end:
    if (_links_local_nonprim) {
        about_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
