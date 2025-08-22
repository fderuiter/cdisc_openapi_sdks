package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClassFieldRef;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashProductRef;
import org.openapitools.model.RootCdashClassFieldRef;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.SdtmClassVariableRefTarget;
import org.openapitools.model.SdtmDatasetVariableRefTarget;

@Canonical
class CdashClassFieldLinks {
    
    CdashClassFieldRef self
    
    List<RootCtCodelistRefElement> codelist = new ArrayList<>()
    
    CdashProductRef parentProduct
    
    CdashClassRef parentClass
    
    RootCdashClassFieldRef rootItem
    
    CdashClassFieldRef priorVersion
    
    List<SdtmClassVariableRefTarget> sdtmClassMappingTargets = new ArrayList<>()
    
    List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets = new ArrayList<>()
}
