package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigClassDomainsRef;
import org.openapitools.model.CdashigDomainRefElement;

@Canonical
class CdashigClassDomainsLinks {
    
    CdashigClassDomainsRef self
    
    List<CdashigDomainRefElement> domains = new ArrayList<>()
}
