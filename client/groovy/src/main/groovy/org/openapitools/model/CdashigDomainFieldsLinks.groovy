package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigDomainFieldRefElement;
import org.openapitools.model.CdashigDomainFieldsRef;
import org.openapitools.model.CdashigProductRef;

@Canonical
class CdashigDomainFieldsLinks {
    
    CdashigDomainFieldsRef self
    
    CdashigProductRef parentProduct
    
    CdashigClassRef parentClass
    
    List<CdashigDomainFieldRefElement> fields = new ArrayList<>()
}
