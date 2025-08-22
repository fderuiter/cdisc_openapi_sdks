#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/health.h"
#include "../model/maintenance_body.h"


// Check health of system components
//
health_t*
StatusesAPI_healthGet(apiClient_t *apiClient);


// Set maintenance mode and message
//
maintenance_body_t*
StatusesAPI_mdrMaintenanceGet(apiClient_t *apiClient);


