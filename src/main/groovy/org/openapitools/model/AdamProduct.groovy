package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AdamDatastructure;
import org.openapitools.model.AdamProductLinks;

@Canonical
class AdamProduct {
    
    String name
    
    String label
    
    String description
    
    String source
    
    String effectiveDate
    
    String registrationStatus
    
    String version
    
    AdamProductLinks links
    
    List<AdamDatastructure> dataStructures = new ArrayList<>()
}
