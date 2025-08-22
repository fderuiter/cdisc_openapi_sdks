package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClassFieldRefVersion;
import org.openapitools.model.RootCdashClassFieldRef;

@Canonical
class RootCdashClassFieldLinks {
    
    RootCdashClassFieldRef self
    
    List<CdashClassFieldRefVersion> versions = new ArrayList<>()
}
