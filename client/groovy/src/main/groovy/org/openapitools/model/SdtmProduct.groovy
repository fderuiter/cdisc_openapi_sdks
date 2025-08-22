package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClass;
import org.openapitools.model.SdtmDataset;
import org.openapitools.model.SdtmProductLinks;

@Canonical
class SdtmProduct {
    
    String name
    
    String label
    
    String description
    
    String source
    
    String effectiveDate
    
    String registrationStatus
    
    String version
    
    SdtmProductLinks links
    
    List<SdtmClass> classes = new ArrayList<>()
    
    List<SdtmDataset> datasets = new ArrayList<>()
}
