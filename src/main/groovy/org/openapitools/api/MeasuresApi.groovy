package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.ExportQrsItemsTable
import org.openapitools.model.ExportQrsWorkbook
import org.openapitools.model.QrsItem
import org.openapitools.model.QrsItems
import org.openapitools.model.QrsProduct
import org.openapitools.model.QrsResponsegroup
import org.openapitools.model.QrsResponsegroups
import org.openapitools.model.XmlQrsItem
import org.openapitools.model.XmlQrsItems
import org.openapitools.model.XmlQrsProduct
import org.openapitools.model.XmlQrsResponsegroup
import org.openapitools.model.XmlQrsResponsegroups

class MeasuresApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrQrsMeasureVersionGet ( String measure, String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/qrs/${measure}/${version}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (measure == null) {
            throw new RuntimeException("missing required params measure")
        }
        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QrsProduct.class )

    }

    def mdrQrsMeasureVersionItemsGet ( String measure, String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/qrs/${measure}/${version}/items"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (measure == null) {
            throw new RuntimeException("missing required params measure")
        }
        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QrsItems.class )

    }

    def mdrQrsMeasureVersionItemsItemGet ( String measure, String version, String item, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/qrs/${measure}/${version}/items/${item}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (measure == null) {
            throw new RuntimeException("missing required params measure")
        }
        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (item == null) {
            throw new RuntimeException("missing required params item")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QrsItem.class )

    }

    def mdrQrsMeasureVersionResponsegroupsGet ( String measure, String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/qrs/${measure}/${version}/responsegroups"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (measure == null) {
            throw new RuntimeException("missing required params measure")
        }
        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QrsResponsegroups.class )

    }

    def mdrQrsMeasureVersionResponsegroupsResponsegroupGet ( String measure, String version, String responsegroup, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/qrs/${measure}/${version}/responsegroups/${responsegroup}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (measure == null) {
            throw new RuntimeException("missing required params measure")
        }
        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (responsegroup == null) {
            throw new RuntimeException("missing required params responsegroup")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QrsResponsegroup.class )

    }

}
