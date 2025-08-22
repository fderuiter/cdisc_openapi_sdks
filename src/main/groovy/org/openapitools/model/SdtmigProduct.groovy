package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmigClass;
import org.openapitools.model.SdtmigProductLinks;

@Canonical
class SdtmigProduct {
    
    String name
    
    String label
    
    String description
    
    String source
    
    String effectiveDate
    
    String registrationStatus
    
    String version
    
    SdtmigProductLinks links
    
    List<SdtmigClass> classes = new ArrayList<>()
}
