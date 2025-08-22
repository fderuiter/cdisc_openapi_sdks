package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CtCodelistRefVersion;
import org.openapitools.model.RootCtCodelistRef;

@Canonical
class RootCtCodelistLinks {
    
    RootCtCodelistRef self
    
    List<CtCodelistRefVersion> versions = new ArrayList<>()
}
