package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.ExportSdtmigDatasetsTable
import org.openapitools.model.ExportSdtmigVariablesTable
import org.openapitools.model.ExportSdtmigWorkbook
import org.openapitools.model.RootSdtmigDatasetVariable
import org.openapitools.model.SdtmigClass
import org.openapitools.model.SdtmigClassDatasets
import org.openapitools.model.SdtmigClasses
import org.openapitools.model.SdtmigDataset
import org.openapitools.model.SdtmigDatasetVariable
import org.openapitools.model.SdtmigDatasetVariables
import org.openapitools.model.SdtmigDatasets
import org.openapitools.model.SdtmigProduct
import org.openapitools.model.XmlRootSdtmigDatasetVariable
import org.openapitools.model.XmlSdtmigClass
import org.openapitools.model.XmlSdtmigClassDatasets
import org.openapitools.model.XmlSdtmigClasses
import org.openapitools.model.XmlSdtmigDataset
import org.openapitools.model.XmlSdtmigDatasetVariable
import org.openapitools.model.XmlSdtmigDatasetVariables
import org.openapitools.model.XmlSdtmigDatasets
import org.openapitools.model.XmlSdtmigProduct

class SdtmImplementationGuideSdtmigApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrRootSdtmigDatasetsDatasetVariablesVarGet ( String dataset, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/sdtmig/datasets/${dataset}/variables/${var}"

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
                    RootSdtmigDatasetVariable.class )

    }

    def mdrSdtmigVersionClassesClassDatasetsGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtmig/${version}/classes/${class}/datasets"

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
                    SdtmigClassDatasets.class )

    }

    def mdrSdtmigVersionClassesClassGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtmig/${version}/classes/${class}"

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
                    SdtmigClass.class )

    }

    def mdrSdtmigVersionClassesGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtmig/${version}/classes"

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
                    SdtmigClasses.class )

    }

    def mdrSdtmigVersionDatasetsDatasetGet ( String version, String dataset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtmig/${version}/datasets/${dataset}"

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
                    SdtmigDataset.class )

    }

    def mdrSdtmigVersionDatasetsDatasetVariablesGet ( String version, String dataset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtmig/${version}/datasets/${dataset}/variables"

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
                    SdtmigDatasetVariables.class )

    }

    def mdrSdtmigVersionDatasetsDatasetVariablesVarGet ( String version, String dataset, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtmig/${version}/datasets/${dataset}/variables/${var}"

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
                    SdtmigDatasetVariable.class )

    }

    def mdrSdtmigVersionDatasetsGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtmig/${version}/datasets"

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
                    SdtmigDatasets.class )

    }

    def mdrSdtmigVersionGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtmig/${version}"

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
                    SdtmigProduct.class )

    }

}
