package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.QrsItem;
import org.openapitools.model.QrsProductLinks;

@Canonical
class QrsProduct {
    
    String name
    
    String label
    
    String description
    
    String effectiveDate
    
    String untilDate
    
    String registrationStatus
    
    String version
    
    String qrsType
    
    QrsProductLinks links
    
    List<QrsItem> items = new ArrayList<>()
}
