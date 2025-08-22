#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cdash_class.h"
#include "../model/cdash_class_domains.h"
#include "../model/cdash_class_field.h"
#include "../model/cdash_domain.h"
#include "../model/cdash_domain_field.h"
#include "../model/cdash_domain_fields.h"
#include "../model/cdash_product.h"
#include "../model/cdash_product_classes.h"
#include "../model/cdash_product_domains.h"
#include "../model/default_error_response.h"
#include "../model/export_cdash_table.h"
#include "../model/root_cdash_class_field.h"
#include "../model/root_cdash_domain_field.h"
#include "../model/xml_cdash_class.h"
#include "../model/xml_cdash_class_domains.h"
#include "../model/xml_cdash_class_field.h"
#include "../model/xml_cdash_domain.h"
#include "../model/xml_cdash_domain_field.h"
#include "../model/xml_cdash_domain_fields.h"
#include "../model/xml_cdash_product.h"
#include "../model/xml_cdash_product_classes.h"
#include "../model/xml_cdash_product_domains.h"
#include "../model/xml_root_cdash_class_field.h"
#include "../model/xml_root_cdash_domain_field.h"


// Get CDASH Class Domain List
//
cdash_class_domains_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassDomainsGet(apiClient_t *apiClient, char *version, char *_class);


// Get CDASH Class Field
//
cdash_class_field_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassFieldsFieldGet(apiClient_t *apiClient, char *version, char *_class, char *field);


// Get CDASH Class
//
cdash_class_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);


// Get CDASH Class List
//
cdash_product_classes_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesGet(apiClient_t *apiClient, char *version);


// Get CDASH Domain Field
//
cdash_domain_field_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *field);


// Get CDASH Domain Field List
//
cdash_domain_fields_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsGet(apiClient_t *apiClient, char *version, char *domain);


// Get CDASH Domain
//
cdash_domain_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainGet(apiClient_t *apiClient, char *version, char *domain);


// Get CDASH Domain List
//
cdash_product_domains_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsGet(apiClient_t *apiClient, char *version);


// Get CDASH Product
//
cdash_product_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionGet(apiClient_t *apiClient, char *version);


// Get Root CDASH Class Field
//
root_cdash_class_field_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashClassesClassFieldsFieldGet(apiClient_t *apiClient, char *_class, char *field);


// Get Root CDASH Domain Field
//
root_cdash_domain_field_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *domain, char *field);


