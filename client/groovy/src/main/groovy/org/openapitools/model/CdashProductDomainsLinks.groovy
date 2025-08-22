package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashDomainRefElement;
import org.openapitools.model.CdashProductDomainsRef;
import org.openapitools.model.CdashProductRef;

@Canonical
class CdashProductDomainsLinks {
    
    CdashProductDomainsRef self
    
    CdashProductRef parentProduct
    
    List<CdashDomainRefElement> domains = new ArrayList<>()
}
