package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigScenarioField;
import org.openapitools.model.CdashigScenarioLinks;

@Canonical
class CdashigScenario {
    
    String ordinal
    
    String domain
    
    String scenario
    
    CdashigScenarioLinks links
    
    List<CdashigScenarioField> fields = new ArrayList<>()
}
