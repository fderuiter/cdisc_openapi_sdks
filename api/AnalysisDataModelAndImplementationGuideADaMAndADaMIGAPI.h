#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/adam_datastructure.h"
#include "../model/adam_datastructure_variables.h"
#include "../model/adam_datastructure_varsets.h"
#include "../model/adam_product.h"
#include "../model/adam_product_datastructures.h"
#include "../model/adam_variable.h"
#include "../model/adam_varset.h"
#include "../model/default_error_response.h"
#include "../model/export_adam_datastructures_table.h"
#include "../model/export_adam_variables_table.h"
#include "../model/export_adam_workbook.h"
#include "../model/xml_adam_datastructure.h"
#include "../model/xml_adam_datastructure_variables.h"
#include "../model/xml_adam_datastructure_varsets.h"
#include "../model/xml_adam_product.h"
#include "../model/xml_adam_product_datastructures.h"
#include "../model/xml_adam_variable.h"
#include "../model/xml_adam_varset.h"


// Get ADaM Data Structure List
//
adam_product_datastructures_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresGet(apiClient_t *apiClient, char *product);


// Get ADaM Data Structure
//
adam_datastructure_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureGet(apiClient_t *apiClient, char *product, char *structure);


// Get ADaM Variable List
//
adam_datastructure_variables_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesGet(apiClient_t *apiClient, char *product, char *structure);


// Get ADaM Variable
//
adam_variable_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesVarGet(apiClient_t *apiClient, char *product, char *structure, char *var);


// Get ADaM Variable Set List
//
adam_datastructure_varsets_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsGet(apiClient_t *apiClient, char *product, char *structure);


// Get ADaM Variable Set
//
adam_varset_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsVarsetGet(apiClient_t *apiClient, char *product, char *structure, char *varset);


// Get ADaM Product
//
adam_product_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductGet(apiClient_t *apiClient, char *product);


