package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CtCodelistRef;
import org.openapitools.model.CtPackageRef;
import org.openapitools.model.RootCtCodelistRef;

@Canonical
class CtCodelistLinks {
    
    CtCodelistRef self
    
    CtPackageRef parentPackage
    
    RootCtCodelistRef rootItem
    
    CtCodelistRef priorVersion
}
