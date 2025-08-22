package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigDomainFieldRefVersion;
import org.openapitools.model.RootCdashigDomainFieldRef;

@Canonical
class RootCdashigDomainFieldLinks {
    
    RootCdashigDomainFieldRef self
    
    List<CdashigDomainFieldRefVersion> versions = new ArrayList<>()
}
