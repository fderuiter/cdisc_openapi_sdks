package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DefaultErrorResponse {
    /* HTTP Status Code */
    String statusCode
    /* HTTP Reason Phrase */
    String reasonPhrase
    /* User Error Message */
    String userMessage
    /* Admin Error Message */
    String adminMessage
}
