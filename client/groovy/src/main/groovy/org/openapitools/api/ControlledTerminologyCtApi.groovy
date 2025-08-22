package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CtCodelist
import org.openapitools.model.CtCodelistTerms
import org.openapitools.model.CtPackage
import org.openapitools.model.CtPackageCodelists
import org.openapitools.model.CtPackages
import org.openapitools.model.CtTerm
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.ExportCtTable
import org.openapitools.model.RootCtCodelist
import org.openapitools.model.RootCtTerm
import org.openapitools.model.XmlCtCodelist
import org.openapitools.model.XmlCtCodelistTerms
import org.openapitools.model.XmlCtPackage
import org.openapitools.model.XmlCtPackageCodelists
import org.openapitools.model.XmlCtPackages
import org.openapitools.model.XmlCtTerm
import org.openapitools.model.XmlRootCtCodelist
import org.openapitools.model.XmlRootCtTerm

class ControlledTerminologyCtApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrCtPackagesGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/ct/packages"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CtPackages.class )

    }

    def mdrCtPackagesPackageCodelistsCodelistGet ( String _package, String codelist, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/ct/packages/${package}/codelists/${codelist}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (_package == null) {
            throw new RuntimeException("missing required params _package")
        }
        // verify required params are set
        if (codelist == null) {
            throw new RuntimeException("missing required params codelist")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CtCodelist.class )

    }

    def mdrCtPackagesPackageCodelistsCodelistTermsGet ( String _package, String codelist, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/ct/packages/${package}/codelists/${codelist}/terms"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (_package == null) {
            throw new RuntimeException("missing required params _package")
        }
        // verify required params are set
        if (codelist == null) {
            throw new RuntimeException("missing required params codelist")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CtCodelistTerms.class )

    }

    def mdrCtPackagesPackageCodelistsCodelistTermsTermGet ( String _package, String codelist, String term, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/ct/packages/${package}/codelists/${codelist}/terms/${term}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (_package == null) {
            throw new RuntimeException("missing required params _package")
        }
        // verify required params are set
        if (codelist == null) {
            throw new RuntimeException("missing required params codelist")
        }
        // verify required params are set
        if (term == null) {
            throw new RuntimeException("missing required params term")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CtTerm.class )

    }

    def mdrCtPackagesPackageCodelistsGet ( String _package, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/ct/packages/${package}/codelists"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (_package == null) {
            throw new RuntimeException("missing required params _package")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CtPackageCodelists.class )

    }

    def mdrCtPackagesProductGet ( String product, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/ct/packages/${product}"

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
                    CtPackage.class )

    }

    def mdrRootCtProductGroupCodelistsCodelistGet ( String productGroup, String codelist, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/ct/${productGroup}/codelists/${codelist}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (productGroup == null) {
            throw new RuntimeException("missing required params productGroup")
        }
        // verify required params are set
        if (codelist == null) {
            throw new RuntimeException("missing required params codelist")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RootCtCodelist.class )

    }

    def mdrRootCtProductGroupCodelistsCodelistTermsTermGet ( String productGroup, String codelist, String term, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/ct/${productGroup}/codelists/${codelist}/terms/${term}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (productGroup == null) {
            throw new RuntimeException("missing required params productGroup")
        }
        // verify required params are set
        if (codelist == null) {
            throw new RuntimeException("missing required params codelist")
        }
        // verify required params are set
        if (term == null) {
            throw new RuntimeException("missing required params term")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RootCtTerm.class )

    }

}
