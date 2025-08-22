package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClassField;
import org.openapitools.model.CdashClassLinks;

@Canonical
class CdashClass {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    CdashClassLinks links
    
    List<CdashClassField> cdashModelFields = new ArrayList<>()
}
