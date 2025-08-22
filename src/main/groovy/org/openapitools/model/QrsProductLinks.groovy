package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.QrsItemsRef;
import org.openapitools.model.QrsProductRef;
import org.openapitools.model.RootCtTermRef;

@Canonical
class QrsProductLinks {
    
    QrsProductRef self
    
    QrsProductRef priorVersion
    
    RootCtTermRef qrsTermCAT
    
    QrsItemsRef qrsItems
}
