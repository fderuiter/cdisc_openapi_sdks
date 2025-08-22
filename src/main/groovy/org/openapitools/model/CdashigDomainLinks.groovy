package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigScenarioRefElement;

@Canonical
class CdashigDomainLinks {
    
    CdashigDomainRef self
    
    CdashigProductRef parentProduct
    
    CdashigClassRef parentClass
    
    CdashigDomainRef priorVersion
    
    List<CdashigScenarioRefElement> scenarios = new ArrayList<>()
}
