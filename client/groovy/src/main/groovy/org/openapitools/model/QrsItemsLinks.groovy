package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.QrsItemRefElement;
import org.openapitools.model.QrsItemsRef;
import org.openapitools.model.QrsProductRef;

@Canonical
class QrsItemsLinks {
    
    QrsItemsRef self
    
    QrsProductRef parentProduct
    
    List<QrsItemRefElement> items = new ArrayList<>()
}
