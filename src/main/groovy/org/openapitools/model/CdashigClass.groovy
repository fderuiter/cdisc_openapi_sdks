package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigClassLinks;
import org.openapitools.model.CdashigDomain;
import org.openapitools.model.CdashigScenario;

@Canonical
class CdashigClass {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    CdashigClassLinks links
    
    List<CdashigDomain> domains = new ArrayList<>()
    
    List<CdashigScenario> scenarios = new ArrayList<>()
}
