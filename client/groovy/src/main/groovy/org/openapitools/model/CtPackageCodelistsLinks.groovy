package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CtCodelistRefElement;
import org.openapitools.model.CtPackageCodelistsRef;

@Canonical
class CtPackageCodelistsLinks {
    
    CtPackageCodelistsRef self
    
    CtPackageCodelistsRef priorVersion
    
    List<CtCodelistRefElement> codelists = new ArrayList<>()
}
