#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/_mdr_search_scopes_get_200_response.h"
#include "../model/default_error_response.h"
#include "../model/default_search_response.h"
#include "../model/default_search_scopes.h"
#include "../model/scope_values.h"

// Enum  for SearchesAPI_mdrSearchScopesScopeGet
typedef enum  { cdisc_library_api_mdrSearchScopesScopeGet__NULL = 0, cdisc_library_api_mdrSearchScopesScopeGet___class, cdisc_library_api_mdrSearchScopesScopeGet__codelist, cdisc_library_api_mdrSearchScopesScopeGet__conceptId, cdisc_library_api_mdrSearchScopesScopeGet__core, cdisc_library_api_mdrSearchScopesScopeGet__dataStructure, cdisc_library_api_mdrSearchScopesScopeGet__datasetStructure, cdisc_library_api_mdrSearchScopesScopeGet__definition, cdisc_library_api_mdrSearchScopesScopeGet__description, cdisc_library_api_mdrSearchScopesScopeGet__domain, cdisc_library_api_mdrSearchScopesScopeGet__effectiveDate, cdisc_library_api_mdrSearchScopesScopeGet__extensible, cdisc_library_api_mdrSearchScopesScopeGet__href, cdisc_library_api_mdrSearchScopesScopeGet__label, cdisc_library_api_mdrSearchScopesScopeGet__measureType, cdisc_library_api_mdrSearchScopesScopeGet__name, cdisc_library_api_mdrSearchScopesScopeGet__preferredTerm, cdisc_library_api_mdrSearchScopesScopeGet__product, cdisc_library_api_mdrSearchScopesScopeGet__productGroup, cdisc_library_api_mdrSearchScopesScopeGet__registrationStatus, cdisc_library_api_mdrSearchScopesScopeGet__roleDescription, cdisc_library_api_mdrSearchScopesScopeGet__sdtmTarget, cdisc_library_api_mdrSearchScopesScopeGet__simpleDatatype, cdisc_library_api_mdrSearchScopesScopeGet__submissionValue, cdisc_library_api_mdrSearchScopesScopeGet__synonyms, cdisc_library_api_mdrSearchScopesScopeGet__type, cdisc_library_api_mdrSearchScopesScopeGet__uiHref, cdisc_library_api_mdrSearchScopesScopeGet__valueDomain, cdisc_library_api_mdrSearchScopesScopeGet__variableSet, cdisc_library_api_mdrSearchScopesScopeGet__version } cdisc_library_api_mdrSearchScopesScopeGet_scope_e;


// Get Search Results Across CDISC Library
//
default_search_response_t*
SearchesAPI_mdrSearchGet(apiClient_t *apiClient, char *q, char *highlight, double start, double pageSize, char *_class, char *codelist, char *conceptId, char *core, char *dataStructure, char *datasetStructure, char *definition, char *description, char *domain, char *effectiveDate, char *extensible, char *href, char *label, char *measureType, char *name, char *preferredTerm, char *product, char *productGroup, char *registrationStatus, char *roleDescription, char *sdtmTarget, char *simpleDatatype, char *submissionValue, char *synonyms, char *type, char *uiHref, char *valueDomain, char *variableSet, char *version);


// Get Search Results Across CDISC Library
//
_mdr_search_scopes_get_200_response_t*
SearchesAPI_mdrSearchScopesGet(apiClient_t *apiClient);


// Get Search Results Limited to Scope
//
scope_values_t*
SearchesAPI_mdrSearchScopesScopeGet(apiClient_t *apiClient, default_search_scopes_e scope);


