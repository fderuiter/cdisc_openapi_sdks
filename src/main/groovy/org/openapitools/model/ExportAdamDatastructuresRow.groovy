package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ExportAdamDatastructuresRow {
    
    String version
    
    String dataStructureName
    
    String datasetName
    
    String datasetLabel
    
    String datasetDescription
    
    String propertyClass
}
