package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmClassDatasetsLinks;

@Canonical
class SdtmClassDatasets {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    SdtmClassDatasetsLinks links
}
