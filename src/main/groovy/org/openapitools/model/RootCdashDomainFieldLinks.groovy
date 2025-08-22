package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashDomainFieldRefVersion;
import org.openapitools.model.RootCdashDomainFieldRef;

@Canonical
class RootCdashDomainFieldLinks {
    
    RootCdashDomainFieldRef self
    
    List<CdashDomainFieldRefVersion> versions = new ArrayList<>()
}
