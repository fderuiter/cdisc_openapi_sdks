package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigClassRefSubclass;
import org.openapitools.model.CdashigProductRef;

@Canonical
class CdashigClassLinks {
    
    CdashigClassRef self
    
    CdashClassRef modelClass
    
    CdashigProductRef parentProduct
    
    CdashigClassRef parentClass
    
    List<CdashigClassRefSubclass> subclasses = new ArrayList<>()
    
    CdashigClassRef priorVersion
}
