#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/default_error_response.h"
#include "../model/export_sdtmig_datasets_table.h"
#include "../model/export_sdtmig_variables_table.h"
#include "../model/export_sdtmig_workbook.h"
#include "../model/root_sdtmig_dataset_variable.h"
#include "../model/sdtmig_class.h"
#include "../model/sdtmig_class_datasets.h"
#include "../model/sdtmig_classes.h"
#include "../model/sdtmig_dataset.h"
#include "../model/sdtmig_dataset_variable.h"
#include "../model/sdtmig_dataset_variables.h"
#include "../model/sdtmig_datasets.h"
#include "../model/sdtmig_product.h"
#include "../model/xml_root_sdtmig_dataset_variable.h"
#include "../model/xml_sdtmig_class.h"
#include "../model/xml_sdtmig_class_datasets.h"
#include "../model/xml_sdtmig_classes.h"
#include "../model/xml_sdtmig_dataset.h"
#include "../model/xml_sdtmig_dataset_variable.h"
#include "../model/xml_sdtmig_dataset_variables.h"
#include "../model/xml_sdtmig_datasets.h"
#include "../model/xml_sdtmig_product.h"


// Get Root SDTMIG Dataset Variable
//
root_sdtmig_dataset_variable_t*
SDTMImplementationGuideSDTMIGAPI_mdrRootSdtmigDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *dataset, char *var);


// Get SDTMIG Class Dataset List
//
sdtmig_class_datasets_t*
SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassDatasetsGet(apiClient_t *apiClient, char *version, char *_class);


// Get SDTMIG Class
//
sdtmig_class_t*
SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);


// Get SDTMIG Class List
//
sdtmig_classes_t*
SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionClassesGet(apiClient_t *apiClient, char *version);


// Get SDTMIG Dataset
//
sdtmig_dataset_t*
SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetGet(apiClient_t *apiClient, char *version, char *dataset);


// Get SDTMIG Dataset Variable List
//
sdtmig_dataset_variables_t*
SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesGet(apiClient_t *apiClient, char *version, char *dataset);


// Get SDTMIG Dataset Variable
//
sdtmig_dataset_variable_t*
SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *version, char *dataset, char *var);


// Get SDTMIG Dataset List
//
sdtmig_datasets_t*
SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionDatasetsGet(apiClient_t *apiClient, char *version);


// Get SDTMIG product
//
sdtmig_product_t*
SDTMImplementationGuideSDTMIGAPI_mdrSdtmigVersionGet(apiClient_t *apiClient, char *version);


