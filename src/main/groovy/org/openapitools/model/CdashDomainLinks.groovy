package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashDomainRef;
import org.openapitools.model.CdashProductRef;

@Canonical
class CdashDomainLinks {
    
    CdashDomainRef self
    
    CdashProductRef parentProduct
    
    CdashClassRef parentClass
    
    CdashDomainRef priorVersion
}
