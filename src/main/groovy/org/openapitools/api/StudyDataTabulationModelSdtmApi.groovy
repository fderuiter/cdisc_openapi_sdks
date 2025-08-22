package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.ExportSdtmDatasetsTable
import org.openapitools.model.ExportSdtmVariablesTable
import org.openapitools.model.ExportSdtmWorkbook
import org.openapitools.model.RootSdtmClassVariable
import org.openapitools.model.RootSdtmDatasetVariable
import org.openapitools.model.SdtmClass
import org.openapitools.model.SdtmClassDatasets
import org.openapitools.model.SdtmClassVariable
import org.openapitools.model.SdtmClassVariables
import org.openapitools.model.SdtmClasses
import org.openapitools.model.SdtmDataset
import org.openapitools.model.SdtmDatasetVariable
import org.openapitools.model.SdtmDatasetVariables
import org.openapitools.model.SdtmDatasets
import org.openapitools.model.SdtmProduct
import org.openapitools.model.XmlRootSdtmClassVariable
import org.openapitools.model.XmlRootSdtmDatasetVariable
import org.openapitools.model.XmlSdtmClass
import org.openapitools.model.XmlSdtmClassDatasets
import org.openapitools.model.XmlSdtmClassVariable
import org.openapitools.model.XmlSdtmClassVariables
import org.openapitools.model.XmlSdtmClasses
import org.openapitools.model.XmlSdtmDataset
import org.openapitools.model.XmlSdtmDatasetVariable
import org.openapitools.model.XmlSdtmDatasetVariables
import org.openapitools.model.XmlSdtmDatasets
import org.openapitools.model.XmlSdtmProduct

class StudyDataTabulationModelSdtmApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrRootSdtmClassesClassVariablesVarGet ( String propertyClass, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/sdtm/classes/${class}/variables/${var}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (propertyClass == null) {
            throw new RuntimeException("missing required params propertyClass")
        }
        // verify required params are set
        if (var == null) {
            throw new RuntimeException("missing required params var")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RootSdtmClassVariable.class )

    }

    def mdrRootSdtmDatasetsDatasetVariablesVarGet ( String dataset, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/sdtm/datasets/${dataset}/variables/${var}"

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
                    RootSdtmDatasetVariable.class )

    }

    def mdrSdtmVersionClassesClassDatasetsGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/classes/${class}/datasets"

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
                    SdtmClassDatasets.class )

    }

    def mdrSdtmVersionClassesClassGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/classes/${class}"

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
                    SdtmClass.class )

    }

    def mdrSdtmVersionClassesClassVariablesGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/classes/${class}/variables"

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
                    SdtmClassVariables.class )

    }

    def mdrSdtmVersionClassesClassVariablesVarGet ( String version, String propertyClass, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/classes/${class}/variables/${var}"

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
        // verify required params are set
        if (var == null) {
            throw new RuntimeException("missing required params var")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SdtmClassVariable.class )

    }

    def mdrSdtmVersionClassesGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/classes"

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
                    SdtmClasses.class )

    }

    def mdrSdtmVersionDatasetsDatasetGet ( String version, String dataset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/datasets/${dataset}"

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
                    SdtmDataset.class )

    }

    def mdrSdtmVersionDatasetsDatasetVariablesGet ( String version, String dataset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/datasets/${dataset}/variables"

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
                    SdtmDatasetVariables.class )

    }

    def mdrSdtmVersionDatasetsDatasetVariablesVarGet ( String version, String dataset, String var, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/datasets/${dataset}/variables/${var}"

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
                    SdtmDatasetVariable.class )

    }

    def mdrSdtmVersionDatasetsGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}/datasets"

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
                    SdtmDatasets.class )

    }

    def mdrSdtmVersionGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/sdtm/${version}"

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
                    SdtmProduct.class )

    }

}
