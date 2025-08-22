#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/about.h"
#include "../model/default_error_response.h"
#include "../model/lastupdated.h"
#include "../model/productgroup_data_analysis.h"
#include "../model/productgroup_data_collection.h"
#include "../model/productgroup_data_tabulation.h"
#include "../model/productgroup_qrs.h"
#include "../model/productgroup_terminology.h"
#include "../model/products.h"
#include "../model/xml_about.h"
#include "../model/xml_lastupdated.h"
#include "../model/xml_productgroup_data_analysis.h"
#include "../model/xml_productgroup_data_collection.h"
#include "../model/xml_productgroup_data_tabulation.h"
#include "../model/xml_productgroup_terminology.h"
#include "../model/xml_products.h"


// Get Information About CDISC Library
//
about_t*
DefaultAPI_mdrAboutGet(apiClient_t *apiClient);


// Get CDISC Library Last Updated
//
lastupdated_t*
DefaultAPI_mdrLastupdatedGet(apiClient_t *apiClient);


// Get CDISC Library Product Group Data Analysis
//
productgroup_data_analysis_t*
DefaultAPI_mdrProductsDataAnalysisGet(apiClient_t *apiClient);


// Get CDISC Library Product Group Data Collection
//
productgroup_data_collection_t*
DefaultAPI_mdrProductsDataCollectionGet(apiClient_t *apiClient);


// Get CDISC Library Product Group Data Tabulation
//
productgroup_data_tabulation_t*
DefaultAPI_mdrProductsDataTabulationGet(apiClient_t *apiClient);


// Get CDISC Library Products
//
products_t*
DefaultAPI_mdrProductsGet(apiClient_t *apiClient);


// Get CDISC Library Product Group QRS
//
productgroup_qrs_t*
DefaultAPI_mdrProductsMeasuresGet(apiClient_t *apiClient);


// Get CDISC Library Product Group Terminology
//
productgroup_terminology_t*
DefaultAPI_mdrProductsTerminologyGet(apiClient_t *apiClient);


