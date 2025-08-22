#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/default_error_response.h"
#include "../model/export_sdtm_datasets_table.h"
#include "../model/export_sdtm_variables_table.h"
#include "../model/export_sdtm_workbook.h"
#include "../model/root_sdtm_class_variable.h"
#include "../model/root_sdtm_dataset_variable.h"
#include "../model/sdtm_class.h"
#include "../model/sdtm_class_datasets.h"
#include "../model/sdtm_class_variable.h"
#include "../model/sdtm_class_variables.h"
#include "../model/sdtm_classes.h"
#include "../model/sdtm_dataset.h"
#include "../model/sdtm_dataset_variable.h"
#include "../model/sdtm_dataset_variables.h"
#include "../model/sdtm_datasets.h"
#include "../model/sdtm_product.h"
#include "../model/xml_root_sdtm_class_variable.h"
#include "../model/xml_root_sdtm_dataset_variable.h"
#include "../model/xml_sdtm_class.h"
#include "../model/xml_sdtm_class_datasets.h"
#include "../model/xml_sdtm_class_variable.h"
#include "../model/xml_sdtm_class_variables.h"
#include "../model/xml_sdtm_classes.h"
#include "../model/xml_sdtm_dataset.h"
#include "../model/xml_sdtm_dataset_variable.h"
#include "../model/xml_sdtm_dataset_variables.h"
#include "../model/xml_sdtm_datasets.h"
#include "../model/xml_sdtm_product.h"


// Get Root of SDTM Class Variable
//
root_sdtm_class_variable_t*
StudyDataTabulationModelSDTMAPI_mdrRootSdtmClassesClassVariablesVarGet(apiClient_t *apiClient, char *_class, char *var);


// Get Root SDTM Dataset Variable
//
root_sdtm_dataset_variable_t*
StudyDataTabulationModelSDTMAPI_mdrRootSdtmDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *dataset, char *var);


// Get SDTM Class Dataset List
//
sdtm_class_datasets_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassDatasetsGet(apiClient_t *apiClient, char *version, char *_class);


// Get SDTM Class
//
sdtm_class_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);


// Get SDTM Class Variable List
//
sdtm_class_variables_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesGet(apiClient_t *apiClient, char *version, char *_class);


// Get SDTM Class Variable
//
sdtm_class_variable_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesClassVariablesVarGet(apiClient_t *apiClient, char *version, char *_class, char *var);


// Get SDTM Class List
//
sdtm_classes_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionClassesGet(apiClient_t *apiClient, char *version);


// Get SDTM Dataset
//
sdtm_dataset_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetGet(apiClient_t *apiClient, char *version, char *dataset);


// Get SDTM Dataset Variable List
//
sdtm_dataset_variables_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesGet(apiClient_t *apiClient, char *version, char *dataset);


// Get SDTM Dataset Variable
//
sdtm_dataset_variable_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *version, char *dataset, char *var);


// Get SDTM Dataset List
//
sdtm_datasets_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionDatasetsGet(apiClient_t *apiClient, char *version);


// Get SDTM product
//
sdtm_product_t*
StudyDataTabulationModelSDTMAPI_mdrSdtmVersionGet(apiClient_t *apiClient, char *version);


