#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/ct_codelist.h"
#include "../model/ct_codelist_terms.h"
#include "../model/ct_package.h"
#include "../model/ct_package_codelists.h"
#include "../model/ct_packages.h"
#include "../model/ct_term.h"
#include "../model/default_error_response.h"
#include "../model/export_ct_table.h"
#include "../model/root_ct_codelist.h"
#include "../model/root_ct_term.h"
#include "../model/xml_ct_codelist.h"
#include "../model/xml_ct_codelist_terms.h"
#include "../model/xml_ct_package.h"
#include "../model/xml_ct_package_codelists.h"
#include "../model/xml_ct_packages.h"
#include "../model/xml_ct_term.h"
#include "../model/xml_root_ct_codelist.h"
#include "../model/xml_root_ct_term.h"


// Get CDISC Library CT Package List
//
ct_packages_t*
ControlledTerminologyCTAPI_mdrCtPackagesGet(apiClient_t *apiClient);


// Get CDISC Library CT Package Codelist
//
ct_codelist_t*
ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistGet(apiClient_t *apiClient, char *package, char *codelist);


// Get CDISC Library CT Package Codelist Term List
//
ct_codelist_terms_t*
ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsGet(apiClient_t *apiClient, char *package, char *codelist);


// Get CDISC Library CT Package Codelist Term
//
ct_term_t*
ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsTermGet(apiClient_t *apiClient, char *package, char *codelist, char *term);


// Get CDISC Library CT Package Codelist List
//
ct_package_codelists_t*
ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsGet(apiClient_t *apiClient, char *package);


// Get CDISC Library CT Package
//
ct_package_t*
ControlledTerminologyCTAPI_mdrCtPackagesProductGet(apiClient_t *apiClient, char *product);


// Get CDISC Library Root CT Codelist
//
root_ct_codelist_t*
ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistGet(apiClient_t *apiClient, char *productGroup, char *codelist);


// Get CDISC Library Root CT Term
//
root_ct_term_t*
ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistTermsTermGet(apiClient_t *apiClient, char *productGroup, char *codelist, char *term);


