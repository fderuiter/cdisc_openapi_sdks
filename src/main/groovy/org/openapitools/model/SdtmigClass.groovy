package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmigClassLinks;
import org.openapitools.model.SdtmigDataset;

@Canonical
class SdtmigClass {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    SdtmigClassLinks links
    
    List<SdtmigDataset> datasets = new ArrayList<>()
}
