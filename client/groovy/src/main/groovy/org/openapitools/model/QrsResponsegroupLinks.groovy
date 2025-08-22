package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.QrsResponsegroupRef;
import org.openapitools.model.QrsResponses;

@Canonical
class QrsResponsegroupLinks {
    
    QrsResponsegroupRef self
    
    List<QrsResponses> responses = new ArrayList<>()
}
