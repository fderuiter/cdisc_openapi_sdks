package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigClass;
import org.openapitools.model.CdashigProductLinks;

@Canonical
class CdashigProduct {
    
    String name
    
    String label
    
    String description
    
    String source
    
    String effectiveDate
    
    String registrationStatus
    
    String version
    
    CdashigProductLinks links
    
    List<CdashigClass> classes = new ArrayList<>()
}
