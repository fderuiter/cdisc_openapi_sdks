package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SendigClass;
import org.openapitools.model.SendigProductLinks;

@Canonical
class SendigProduct {
    
    String name
    
    String label
    
    String description
    
    String source
    
    String effectiveDate
    
    String registrationStatus
    
    String version
    
    SendigProductLinks links
    
    List<SendigClass> classes = new ArrayList<>()
}
