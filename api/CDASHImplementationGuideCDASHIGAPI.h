#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cdashig_class.h"
#include "../model/cdashig_class_domains.h"
#include "../model/cdashig_class_scenarios.h"
#include "../model/cdashig_domain.h"
#include "../model/cdashig_domain_field.h"
#include "../model/cdashig_domain_fields.h"
#include "../model/cdashig_product.h"
#include "../model/cdashig_product_classes.h"
#include "../model/cdashig_product_domains.h"
#include "../model/cdashig_product_scenarios.h"
#include "../model/cdashig_scenario.h"
#include "../model/cdashig_scenario_field.h"
#include "../model/cdashig_scenario_fields.h"
#include "../model/default_error_response.h"
#include "../model/export_cdashig_table.h"
#include "../model/root_cdashig_domain_field.h"
#include "../model/root_cdashig_scenario_field.h"
#include "../model/xml_cdashig_class.h"
#include "../model/xml_cdashig_class_domains.h"
#include "../model/xml_cdashig_class_scenarios.h"
#include "../model/xml_cdashig_domain.h"
#include "../model/xml_cdashig_domain_field.h"
#include "../model/xml_cdashig_domain_fields.h"
#include "../model/xml_cdashig_product.h"
#include "../model/xml_cdashig_product_classes.h"
#include "../model/xml_cdashig_product_domains.h"
#include "../model/xml_cdashig_product_scenarios.h"
#include "../model/xml_cdashig_scenario.h"
#include "../model/xml_cdashig_scenario_field.h"
#include "../model/xml_cdashig_scenario_fields.h"
#include "../model/xml_root_cdashig_domain_field.h"
#include "../model/xml_root_cdashig_scenario_field.h"


// Get CDASHIG Class Domain List
//
cdashig_class_domains_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassDomainsGet(apiClient_t *apiClient, char *version, char *_class);


// Get CDASHIG Class
//
cdashig_class_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);


// Get CDASHIG Class Scenario List
//
cdashig_class_scenarios_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassScenariosGet(apiClient_t *apiClient, char *version, char *_class);


// Get CDASHIG Class List
//
cdashig_product_classes_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesGet(apiClient_t *apiClient, char *version);


// Get CDASHIG Domain Field
//
cdashig_domain_field_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *field);


// Get CDASHIG Domain Field List
//
cdashig_domain_fields_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsGet(apiClient_t *apiClient, char *version, char *domain);


// Get CDASHIG Domain
//
cdashig_domain_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainGet(apiClient_t *apiClient, char *version, char *domain);


// Get CDASHIG Domain List
//
cdashig_product_domains_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsGet(apiClient_t *apiClient, char *version);


// Get CDASHIG Product
//
cdashig_product_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionGet(apiClient_t *apiClient, char *version);


// Get CDASHIG Scenario Field
//
cdashig_scenario_field_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *scenario, char *field);


// Get CDASHIG Scenario Field List
//
cdashig_scenario_fields_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsGet(apiClient_t *apiClient, char *version, char *domain, char *scenario);


// Get CDASHIG Scenario
//
cdashig_scenario_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioGet(apiClient_t *apiClient, char *version, char *domain, char *scenario);


// Get CDASHIG Scenario List
//
cdashig_product_scenarios_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosGet(apiClient_t *apiClient, char *version);


// Get Root CDASHIG Domain Field
//
root_cdashig_domain_field_t*
CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *domain, char *field);


// Get Root CDASHIG Scenario Field
//
root_cdashig_scenario_field_t*
CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(apiClient_t *apiClient, char *domain, char *scenario, char *field);


