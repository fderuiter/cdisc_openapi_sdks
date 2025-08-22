package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigClassScenariosRef;
import org.openapitools.model.CdashigScenarioRefElement;

@Canonical
class CdashigClassScenariosLinks {
    
    CdashigClassScenariosRef self
    
    List<CdashigScenarioRefElement> scenarios = new ArrayList<>()
}
