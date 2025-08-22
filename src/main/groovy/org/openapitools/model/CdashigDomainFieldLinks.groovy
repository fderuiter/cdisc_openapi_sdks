package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigDomainFieldRef;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.RootCdashigDomainFieldRef;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.SdtmClassVariableRefTarget;
import org.openapitools.model.SdtmigDatasetVariableRefTarget;

@Canonical
class CdashigDomainFieldLinks {
    
    CdashigDomainFieldRef self
    
    List<RootCtCodelistRefElement> codelist = new ArrayList<>()
    
    CdashigProductRef parentProduct
    
    CdashigDomainRef parentDomain
    
    RootCdashigDomainFieldRef rootItem
    
    CdashigDomainFieldRef priorVersion
    
    List<SdtmClassVariableRefTarget> sdtmClassMappingTargets = new ArrayList<>()
    
    List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets = new ArrayList<>()
}
