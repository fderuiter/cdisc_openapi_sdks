package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SendigDatasetVariablesLinks;

@Canonical
class SendigDatasetVariables {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String datasetStructure
    
    SendigDatasetVariablesLinks links
}
