package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClassRefElement;
import org.openapitools.model.CdashProductClassesRef;
import org.openapitools.model.CdashProductRef;

@Canonical
class CdashProductClassesLinks {
    
    CdashProductClassesRef self
    
    CdashProductRef parentProduct
    
    List<CdashClassRefElement> classes = new ArrayList<>()
}
