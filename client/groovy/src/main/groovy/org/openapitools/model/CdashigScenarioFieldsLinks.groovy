package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigScenarioFieldRefElement;
import org.openapitools.model.CdashigScenarioFieldsRef;

@Canonical
class CdashigScenarioFieldsLinks {
    
    CdashigScenarioFieldsRef self
    
    CdashigProductRef parentProduct
    
    CdashigClassRef parentClass
    
    CdashigDomainRef parentDomain
    
    List<CdashigScenarioFieldRefElement> fields = new ArrayList<>()
}
