package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SendigClassDatasetsLinks;

@Canonical
class SendigClassDatasets {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    SendigClassDatasetsLinks links
}
