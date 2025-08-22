package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashDomainFieldRefElement;
import org.openapitools.model.CdashDomainFieldsRef;
import org.openapitools.model.CdashProductRef;

@Canonical
class CdashDomainFieldsLinks {
    
    CdashDomainFieldsRef self
    
    CdashProductRef parentProduct
    
    CdashClassRef parentClass
    
    List<CdashDomainFieldRefElement> fields = new ArrayList<>()
}
