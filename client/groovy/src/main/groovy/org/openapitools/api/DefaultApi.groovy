package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.About
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.Lastupdated
import org.openapitools.model.ProductgroupDataAnalysis
import org.openapitools.model.ProductgroupDataCollection
import org.openapitools.model.ProductgroupDataTabulation
import org.openapitools.model.ProductgroupQrs
import org.openapitools.model.ProductgroupTerminology
import org.openapitools.model.Products
import org.openapitools.model.XmlAbout
import org.openapitools.model.XmlLastupdated
import org.openapitools.model.XmlProductgroupDataAnalysis
import org.openapitools.model.XmlProductgroupDataCollection
import org.openapitools.model.XmlProductgroupDataTabulation
import org.openapitools.model.XmlProductgroupTerminology
import org.openapitools.model.XmlProducts

class DefaultApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrAboutGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/about"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    About.class )

    }

    def mdrLastupdatedGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/lastupdated"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Lastupdated.class )

    }

    def mdrProductsDataAnalysisGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/products/DataAnalysis"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ProductgroupDataAnalysis.class )

    }

    def mdrProductsDataCollectionGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/products/DataCollection"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ProductgroupDataCollection.class )

    }

    def mdrProductsDataTabulationGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/products/DataTabulation"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ProductgroupDataTabulation.class )

    }

    def mdrProductsGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/products"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Products.class )

    }

    def mdrProductsMeasuresGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/products/Measures"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ProductgroupQrs.class )

    }

    def mdrProductsTerminologyGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/products/Terminology"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ProductgroupTerminology.class )

    }

}
