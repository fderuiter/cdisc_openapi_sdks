package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigScenarioFieldRef;
import org.openapitools.model.CdashigScenarioRef;
import org.openapitools.model.RootCdashigScenarioFieldRef;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.SdtmigDatasetVariableRefTarget;

@Canonical
class CdashigScenarioFieldLinks {
    
    CdashigScenarioFieldRef self
    
    List<RootCtCodelistRefElement> codelist = new ArrayList<>()
    
    CdashigProductRef parentProduct
    
    CdashigDomainRef parentDomain
    
    CdashigScenarioRef parentScenario
    
    RootCdashigScenarioFieldRef rootItem
    
    CdashigScenarioFieldRef priorVersion
    
    List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets = new ArrayList<>()
}
