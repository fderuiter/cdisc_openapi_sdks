package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.QrsItemsLinks;

@Canonical
class QrsItems {
    
    String name
    
    String label
    
    String description
    
    String effectiveDate
    
    String untilDate
    
    String registrationStatus
    
    String version
    
    String qrsType
    
    QrsItemsLinks links
}
