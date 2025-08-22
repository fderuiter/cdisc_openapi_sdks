package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigScenarioFieldRefVersion;
import org.openapitools.model.RootCdashigScenarioFieldRef;

@Canonical
class RootCdashigScenarioFieldLinks {
    
    RootCdashigScenarioFieldRef self
    
    List<CdashigScenarioFieldRefVersion> versions = new ArrayList<>()
}
