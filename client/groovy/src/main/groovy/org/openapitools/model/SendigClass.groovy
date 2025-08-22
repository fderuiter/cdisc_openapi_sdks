package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SendigClassLinks;
import org.openapitools.model.SendigDataset;

@Canonical
class SendigClass {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    SendigClassLinks links
    
    List<SendigDataset> datasets = new ArrayList<>()
}
