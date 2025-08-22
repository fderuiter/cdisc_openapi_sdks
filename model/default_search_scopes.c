#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "default_search_scopes.h"


char* default_search_scopes_default_search_scopes_ToString(cdisc_library_api_default_search_scopes__e default_search_scopes) {
    char *default_search_scopesArray[] =  { "NULL", "class", "codelist", "conceptId", "core", "dataStructure", "datasetStructure", "definition", "description", "domain", "effectiveDate", "extensible", "href", "label", "measureType", "name", "preferredTerm", "product", "productGroup", "registrationStatus", "roleDescription", "sdtmTarget", "simpleDatatype", "submissionValue", "synonyms", "type", "uiHref", "valueDomain", "variableSet", "version" };
    return default_search_scopesArray[default_search_scopes];
}

cdisc_library_api_default_search_scopes__e default_search_scopes_default_search_scopes_FromString(char* default_search_scopes) {
    int stringToReturn = 0;
    char *default_search_scopesArray[] =  { "NULL", "class", "codelist", "conceptId", "core", "dataStructure", "datasetStructure", "definition", "description", "domain", "effectiveDate", "extensible", "href", "label", "measureType", "name", "preferredTerm", "product", "productGroup", "registrationStatus", "roleDescription", "sdtmTarget", "simpleDatatype", "submissionValue", "synonyms", "type", "uiHref", "valueDomain", "variableSet", "version" };
    size_t sizeofArray = sizeof(default_search_scopesArray) / sizeof(default_search_scopesArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(default_search_scopes, default_search_scopesArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *default_search_scopes_convertToJSON(cdisc_library_api_default_search_scopes__e default_search_scopes) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "default_search_scopes", default_search_scopes_default_search_scopes_ToString(default_search_scopes)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

cdisc_library_api_default_search_scopes__e default_search_scopes_parseFromJSON(cJSON *default_search_scopesJSON) {
    if(!cJSON_IsString(default_search_scopesJSON) || (default_search_scopesJSON->valuestring == NULL)) {
        return 0;
    }
    return default_search_scopes_default_search_scopes_FromString(default_search_scopesJSON->valuestring);
}
