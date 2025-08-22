package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashDomainFieldRef;
import org.openapitools.model.CdashDomainRef;
import org.openapitools.model.CdashProductRef;
import org.openapitools.model.RootCdashDomainFieldRef;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.SdtmDatasetVariableRefTarget;
import org.openapitools.model.SdtmigDatasetVariableRefTarget;

@Canonical
class CdashDomainFieldLinks {
    
    CdashDomainFieldRef self
    
    List<RootCtCodelistRefElement> codelist = new ArrayList<>()
    
    CdashProductRef parentProduct
    
    CdashClassRef parentClass
    
    CdashDomainRef parentDomain
    
    RootCdashDomainFieldRef rootItem
    
    CdashDomainFieldRef priorVersion
    
    List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets = new ArrayList<>()
    
    List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets = new ArrayList<>()
}
