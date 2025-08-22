package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.LastupdatedLinks;

@Canonical
class Lastupdated {
    
    LastupdatedLinks links
    
    String overall
    
    String dataAnalysis
    
    String dataCollection
    
    String dataTabulation
    
    String measure
    
    String terminology
}
