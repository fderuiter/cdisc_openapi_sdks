#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/default_error_response.h"
#include "../model/export_sendig_datasets_table.h"
#include "../model/export_sendig_variables_table.h"
#include "../model/export_sendig_workbook.h"
#include "../model/root_sendig_dataset_variable.h"
#include "../model/sendig_class.h"
#include "../model/sendig_class_datasets.h"
#include "../model/sendig_classes.h"
#include "../model/sendig_dataset.h"
#include "../model/sendig_dataset_variable.h"
#include "../model/sendig_dataset_variables.h"
#include "../model/sendig_datasets.h"
#include "../model/sendig_product.h"
#include "../model/xml_root_sendig_dataset_variable.h"
#include "../model/xml_sendig_class.h"
#include "../model/xml_sendig_class_datasets.h"
#include "../model/xml_sendig_classes.h"
#include "../model/xml_sendig_dataset.h"
#include "../model/xml_sendig_dataset_variable.h"
#include "../model/xml_sendig_dataset_variables.h"
#include "../model/xml_sendig_datasets.h"
#include "../model/xml_sendig_product.h"


// Get Root SENDIG Dataset Variable
//
root_sendig_dataset_variable_t*
SENDImplementationGuideSENDIGAPI_mdrRootSendigDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *dataset, char *var);


// Get SENDIG Class Dataset List
//
sendig_class_datasets_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassDatasetsGet(apiClient_t *apiClient, char *version, char *_class);


// Get SENDIG Class
//
sendig_class_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class);


// Get SENDIG Class List
//
sendig_classes_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesGet(apiClient_t *apiClient, char *version);


// Get SENDIG Dataset
//
sendig_dataset_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetGet(apiClient_t *apiClient, char *version, char *dataset);


// Get SENDIG Dataset Variable List
//
sendig_dataset_variables_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesGet(apiClient_t *apiClient, char *version, char *dataset);


// Get SENDIG Dataset Variable
//
sendig_dataset_variable_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *version, char *dataset, char *var);


// Get SENDIG Dataset List
//
sendig_datasets_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsGet(apiClient_t *apiClient, char *version);


// Get SENDIG product
//
sendig_product_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionGet(apiClient_t *apiClient, char *version);


