package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClass;
import org.openapitools.model.CdashDomain;
import org.openapitools.model.CdashProductLinks;

@Canonical
class CdashProduct {
    
    String name
    
    String label
    
    String description
    
    String source
    
    String effectiveDate
    
    String registrationStatus
    
    String version
    
    CdashProductLinks links
    
    List<CdashClass> classes = new ArrayList<>()
    
    List<CdashDomain> domains = new ArrayList<>()
}
