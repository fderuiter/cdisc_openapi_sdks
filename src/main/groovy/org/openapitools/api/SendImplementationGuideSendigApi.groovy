package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.ExportSendigDatasetsTable
import org.openapitools.model.ExportSendigVariablesTable
import org.openapitools.model.ExportSendigWorkbook
import org.openapitools.model.RootSendigDatasetVariable
import org.openapitools.model.SendigClass
import org.openapitools.model.SendigClassDatasets
import org.openapitools.model.SendigClasses
import org.openapitools.model.SendigDataset
import org.openapitools.model.SendigDatasetVariable
import org.openapitools.model.SendigDatasetVariables
import org.openapitools.model.SendigDatasets
import org.openapitools.model.SendigProduct
import org.openapitools.model.XmlRootSendigDatasetVariable
import org.openapitools.model.XmlSendigClass
import org.openapitools.model.XmlSendigClassDatasets
import org.openapitools.model.XmlSendigClasses
import org.openapitools.model.XmlSendigDataset
import org.openapitools.model.XmlSendigDatasetVariable
import org.openapitools.model.XmlSendigDatasetVariables
import org.openapitools.model.XmlSendigDatasets
import org.openapitools.model.XmlSendigProduct

class SendImplementationGuideSendigApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrRootSendigDatasetsDatasetVariablesVarGet ( String dataset, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/sendig/datasets/${dataset}/variables/${var}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (dataset == null) {
            throw new RuntimeException("missing required params dataset")
        }
        // verify required params are set
        if (var == null) {
            throw new RuntimeException("missing required params var")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RootSendigDatasetVariable.class )

    }

    def mdrSendigVersionClassesClassDatasetsGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sendig/${version}/classes/${class}/datasets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (propertyClass == null) {
            throw new RuntimeException("missing required params propertyClass")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SendigClassDatasets.class )

    }

    def mdrSendigVersionClassesClassGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sendig/${version}/classes/${class}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (propertyClass == null) {
            throw new RuntimeException("missing required params propertyClass")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SendigClass.class )

    }

    def mdrSendigVersionClassesGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sendig/${version}/classes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SendigClasses.class )

    }

    def mdrSendigVersionDatasetsDatasetGet ( String version, String dataset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sendig/${version}/datasets/${dataset}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (dataset == null) {
            throw new RuntimeException("missing required params dataset")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SendigDataset.class )

    }

    def mdrSendigVersionDatasetsDatasetVariablesGet ( String version, String dataset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sendig/${version}/datasets/${dataset}/variables"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (dataset == null) {
            throw new RuntimeException("missing required params dataset")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SendigDatasetVariables.class )

    }

    def mdrSendigVersionDatasetsDatasetVariablesVarGet ( String version, String dataset, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sendig/${version}/datasets/${dataset}/variables/${var}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (dataset == null) {
            throw new RuntimeException("missing required params dataset")
        }
        // verify required params are set
        if (var == null) {
            throw new RuntimeException("missing required params var")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SendigDatasetVariable.class )

    }

    def mdrSendigVersionDatasetsGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sendig/${version}/datasets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SendigDatasets.class )

    }

    def mdrSendigVersionGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sendig/${version}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SendigProduct.class )

    }

}
