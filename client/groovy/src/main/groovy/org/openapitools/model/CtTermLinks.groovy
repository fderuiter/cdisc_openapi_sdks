package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CtCodelistRef;
import org.openapitools.model.CtPackageRef;
import org.openapitools.model.CtTermRef;
import org.openapitools.model.RootCtTermRef;

@Canonical
class CtTermLinks {
    
    CtTermRef self
    
    CtPackageRef parentPackage
    
    CtCodelistRef parentCodelist
    
    RootCtTermRef rootItem
    
    CtTermRef priorVersion
}
