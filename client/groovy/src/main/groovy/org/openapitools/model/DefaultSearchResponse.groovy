package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.DefaultSearchResponseHitsInner;

@Canonical
class DefaultSearchResponse {
    
    List<DefaultSearchResponseHitsInner> hits = new ArrayList<>()
    
    BigDecimal totalHits
}
