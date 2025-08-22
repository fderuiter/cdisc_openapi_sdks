package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmDatasetVariablesLinks;

@Canonical
class SdtmDatasetVariables {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String datasetStructure
    
    SdtmDatasetVariablesLinks links
}
