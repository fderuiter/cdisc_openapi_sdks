package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Health
import org.openapitools.model.MaintenanceBody

class StatusesApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def healthGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/health"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Health.class )

    }

    def mdrMaintenanceGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/maintenance"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    MaintenanceBody.class )

    }

}
