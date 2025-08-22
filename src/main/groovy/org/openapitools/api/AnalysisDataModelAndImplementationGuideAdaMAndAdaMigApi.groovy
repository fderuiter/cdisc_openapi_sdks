package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AdamDatastructure
import org.openapitools.model.AdamDatastructureVariables
import org.openapitools.model.AdamDatastructureVarsets
import org.openapitools.model.AdamProduct
import org.openapitools.model.AdamProductDatastructures
import org.openapitools.model.AdamVariable
import org.openapitools.model.AdamVarset
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.ExportAdamDatastructuresTable
import org.openapitools.model.ExportAdamVariablesTable
import org.openapitools.model.ExportAdamWorkbook
import org.openapitools.model.XmlAdamDatastructure
import org.openapitools.model.XmlAdamDatastructureVariables
import org.openapitools.model.XmlAdamDatastructureVarsets
import org.openapitools.model.XmlAdamProduct
import org.openapitools.model.XmlAdamProductDatastructures
import org.openapitools.model.XmlAdamVariable
import org.openapitools.model.XmlAdamVarset

class AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrAdamProductDatastructuresGet ( String product, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/adam/${product}/datastructures"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (product == null) {
            throw new RuntimeException("missing required params product")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AdamProductDatastructures.class )

    }

    def mdrAdamProductDatastructuresStructureGet ( String product, String structure, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/adam/${product}/datastructures/${structure}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (product == null) {
            throw new RuntimeException("missing required params product")
        }
        // verify required params are set
        if (structure == null) {
            throw new RuntimeException("missing required params structure")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AdamDatastructure.class )

    }

    def mdrAdamProductDatastructuresStructureVariablesGet ( String product, String structure, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/adam/${product}/datastructures/${structure}/variables"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (product == null) {
            throw new RuntimeException("missing required params product")
        }
        // verify required params are set
        if (structure == null) {
            throw new RuntimeException("missing required params structure")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AdamDatastructureVariables.class )

    }

    def mdrAdamProductDatastructuresStructureVariablesVarGet ( String product, String structure, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/adam/${product}/datastructures/${structure}/variables/${var}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (product == null) {
            throw new RuntimeException("missing required params product")
        }
        // verify required params are set
        if (structure == null) {
            throw new RuntimeException("missing required params structure")
        }
        // verify required params are set
        if (var == null) {
            throw new RuntimeException("missing required params var")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AdamVariable.class )

    }

    def mdrAdamProductDatastructuresStructureVarsetsGet ( String product, String structure, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/adam/${product}/datastructures/${structure}/varsets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (product == null) {
            throw new RuntimeException("missing required params product")
        }
        // verify required params are set
        if (structure == null) {
            throw new RuntimeException("missing required params structure")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AdamDatastructureVarsets.class )

    }

    def mdrAdamProductDatastructuresStructureVarsetsVarsetGet ( String product, String structure, String varset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/adam/${product}/datastructures/${structure}/varsets/${varset}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (product == null) {
            throw new RuntimeException("missing required params product")
        }
        // verify required params are set
        if (structure == null) {
            throw new RuntimeException("missing required params structure")
        }
        // verify required params are set
        if (varset == null) {
            throw new RuntimeException("missing required params varset")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AdamVarset.class )

    }

    def mdrAdamProductGet ( String product, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/adam/${product}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (product == null) {
            throw new RuntimeException("missing required params product")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AdamProduct.class )

    }

}
