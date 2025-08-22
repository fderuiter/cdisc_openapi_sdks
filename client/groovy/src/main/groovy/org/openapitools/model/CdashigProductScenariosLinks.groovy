package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigProductScenariosRef;
import org.openapitools.model.CdashigScenarioRefElement;

@Canonical
class CdashigProductScenariosLinks {
    
    CdashigProductScenariosRef self
    
    CdashigProductRef parentProduct
    
    List<CdashigScenarioRefElement> scenarios = new ArrayList<>()
}
