package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MaintenanceBody {
    
    Boolean maintenanceMode
    
    String maintenanceMessage
}
