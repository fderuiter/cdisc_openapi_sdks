package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClassLinks;
import org.openapitools.model.SdtmClassVariable;
import org.openapitools.model.SdtmDataset;

@Canonical
class SdtmClass {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    SdtmClassLinks links
    
    List<SdtmClassVariable> classVariables = new ArrayList<>()
    
    List<SdtmDataset> datasets = new ArrayList<>()
}
