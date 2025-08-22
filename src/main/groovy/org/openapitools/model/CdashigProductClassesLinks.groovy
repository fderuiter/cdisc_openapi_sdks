package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigClassRefElement;
import org.openapitools.model.CdashigProductClassesRef;
import org.openapitools.model.CdashigProductRef;

@Canonical
class CdashigProductClassesLinks {
    
    CdashigProductClassesRef self
    
    CdashigProductRef parentProduct
    
    List<CdashigClassRefElement> classes = new ArrayList<>()
}
