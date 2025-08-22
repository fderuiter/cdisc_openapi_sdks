package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashigClassScenariosLinks;

@Canonical
class CdashigClassScenarios {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    CdashigClassScenariosLinks links
}
