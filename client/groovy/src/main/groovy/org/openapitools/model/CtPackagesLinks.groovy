package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CtPackageRefElement;
import org.openapitools.model.CtPackagesRef;

@Canonical
class CtPackagesLinks {
    
    CtPackagesRef self
    
    List<CtPackageRefElement> packages = new ArrayList<>()
}
