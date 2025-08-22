package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CtCodelistTermsRef;
import org.openapitools.model.CtPackageRef;
import org.openapitools.model.CtTermRefElement;
import org.openapitools.model.RootCtCodelistRef;

@Canonical
class CtCodelistTermsLinks {
    
    CtCodelistTermsRef self
    
    CtPackageRef parentPackage
    
    RootCtCodelistRef rootItem
    
    CtCodelistTermsRef priorVersion
    
    List<CtTermRefElement> terms = new ArrayList<>()
}
