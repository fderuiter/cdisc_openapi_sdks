package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.QrsResponsegroupRefElement;
import org.openapitools.model.QrsResponsegroupsRef;

@Canonical
class QrsResponsegroupsLinks {
    
    QrsResponsegroupsRef self
    
    List<QrsResponsegroupRefElement> responsegroups = new ArrayList<>()
}
