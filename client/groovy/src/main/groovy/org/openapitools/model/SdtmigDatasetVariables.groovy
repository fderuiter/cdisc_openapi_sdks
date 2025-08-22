package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmigDatasetVariablesLinks;

@Canonical
class SdtmigDatasetVariables {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String datasetStructure
    
    SdtmigDatasetVariablesLinks links
}
