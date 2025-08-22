package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CtTermRefVersion;
import org.openapitools.model.RootCtTermRef;

@Canonical
class RootCtTermLinks {
    
    RootCtTermRef self
    
    List<CtTermRefVersion> versions = new ArrayList<>()
}
