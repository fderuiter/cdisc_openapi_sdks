package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClassDomainsRef;
import org.openapitools.model.CdashDomainRefElement;

@Canonical
class CdashClassDomainsLinks {
    
    CdashClassDomainsRef self
    
    List<CdashDomainRefElement> domains = new ArrayList<>()
}
