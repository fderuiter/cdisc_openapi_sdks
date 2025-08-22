package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigScenarioRef;

@Canonical
class CdashigScenarioLinks {
    
    CdashigScenarioRef self
    
    CdashigProductRef parentProduct
    
    CdashigClassRef parentClass
    
    CdashigDomainRef parentDomain
    
    CdashigScenarioRef priorVersion
}
