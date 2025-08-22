package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.QrsResponsegroupsLinks;

@Canonical
class QrsResponsegroups {
    
    String name
    
    String label
    
    String description
    
    String effectiveDate
    
    String untilDate
    
    String registrationStatus
    
    String version
    
    String qrsType
    
    QrsResponsegroupsLinks links
}
