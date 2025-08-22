package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigDomainRefElement;
import org.openapitools.model.CdashigProductDomainsRef;
import org.openapitools.model.CdashigProductRef;

@Canonical
class CdashigProductDomainsLinks {
    
    CdashigProductDomainsRef self
    
    CdashigProductRef parentProduct
    
    List<CdashigDomainRefElement> domains = new ArrayList<>()
}
