package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmigClassesLinks;

@Canonical
class SdtmigClasses {
    
    String name
    
    String label
    
    String description
    
    String source
    
    String effectiveDate
    
    String registrationStatus
    
    String version
    
    SdtmigClassesLinks links
}
