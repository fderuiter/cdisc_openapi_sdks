#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/default_error_response.h"
#include "../model/export_qrs_items_table.h"
#include "../model/export_qrs_workbook.h"
#include "../model/qrs_item.h"
#include "../model/qrs_items.h"
#include "../model/qrs_product.h"
#include "../model/qrs_responsegroup.h"
#include "../model/qrs_responsegroups.h"
#include "../model/xml_qrs_item.h"
#include "../model/xml_qrs_items.h"
#include "../model/xml_qrs_product.h"
#include "../model/xml_qrs_responsegroup.h"
#include "../model/xml_qrs_responsegroups.h"


// Get QRS Product
//
qrs_product_t*
MeasuresAPI_mdrQrsMeasureVersionGet(apiClient_t *apiClient, char *measure, char *version);


// Get QRS Item List
//
qrs_items_t*
MeasuresAPI_mdrQrsMeasureVersionItemsGet(apiClient_t *apiClient, char *measure, char *version);


// Get QRS Item
//
qrs_item_t*
MeasuresAPI_mdrQrsMeasureVersionItemsItemGet(apiClient_t *apiClient, char *measure, char *version, char *item);


// Get QRS Response Group List
//
qrs_responsegroups_t*
MeasuresAPI_mdrQrsMeasureVersionResponsegroupsGet(apiClient_t *apiClient, char *measure, char *version);


// Get QRS Response Group
//
qrs_responsegroup_t*
MeasuresAPI_mdrQrsMeasureVersionResponsegroupsResponsegroupGet(apiClient_t *apiClient, char *measure, char *version, char *responsegroup);


