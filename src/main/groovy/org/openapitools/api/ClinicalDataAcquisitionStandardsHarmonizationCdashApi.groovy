package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CdashClass
import org.openapitools.model.CdashClassDomains
import org.openapitools.model.CdashClassField
import org.openapitools.model.CdashDomain
import org.openapitools.model.CdashDomainField
import org.openapitools.model.CdashDomainFields
import org.openapitools.model.CdashProduct
import org.openapitools.model.CdashProductClasses
import org.openapitools.model.CdashProductDomains
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.ExportCdashTable
import org.openapitools.model.RootCdashClassField
import org.openapitools.model.RootCdashDomainField
import org.openapitools.model.XmlCdashClass
import org.openapitools.model.XmlCdashClassDomains
import org.openapitools.model.XmlCdashClassField
import org.openapitools.model.XmlCdashDomain
import org.openapitools.model.XmlCdashDomainField
import org.openapitools.model.XmlCdashDomainFields
import org.openapitools.model.XmlCdashProduct
import org.openapitools.model.XmlCdashProductClasses
import org.openapitools.model.XmlCdashProductDomains
import org.openapitools.model.XmlRootCdashClassField
import org.openapitools.model.XmlRootCdashDomainField

class ClinicalDataAcquisitionStandardsHarmonizationCdashApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrCdashVersionClassesClassDomainsGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}/classes/${class}/domains"

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
                    CdashClassDomains.class )

    }

    def mdrCdashVersionClassesClassFieldsFieldGet ( String version, String propertyClass, String field, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}/classes/${class}/fields/${field}"

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
        if (field == null) {
            throw new RuntimeException("missing required params field")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CdashClassField.class )

    }

    def mdrCdashVersionClassesClassGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}/classes/${class}"

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
                    CdashClass.class )

    }

    def mdrCdashVersionClassesGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}/classes"

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
                    CdashProductClasses.class )

    }

    def mdrCdashVersionDomainsDomainFieldsFieldGet ( String version, String domain, String field, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}/domains/${domain}/fields/${field}"

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
        if (domain == null) {
            throw new RuntimeException("missing required params domain")
        }
        // verify required params are set
        if (field == null) {
            throw new RuntimeException("missing required params field")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CdashDomainField.class )

    }

    def mdrCdashVersionDomainsDomainFieldsGet ( String version, String domain, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}/domains/${domain}/fields"

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
        if (domain == null) {
            throw new RuntimeException("missing required params domain")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CdashDomainFields.class )

    }

    def mdrCdashVersionDomainsDomainGet ( String version, String domain, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}/domains/${domain}"

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
        if (domain == null) {
            throw new RuntimeException("missing required params domain")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CdashDomain.class )

    }

    def mdrCdashVersionDomainsGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}/domains"

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
                    CdashProductDomains.class )

    }

    def mdrCdashVersionGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdash/${version}"

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
                    CdashProduct.class )

    }

    def mdrRootCdashClassesClassFieldsFieldGet ( String propertyClass, String field, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/cdash/classes/${class}/fields/${field}"

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
        if (field == null) {
            throw new RuntimeException("missing required params field")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RootCdashClassField.class )

    }

    def mdrRootCdashDomainsDomainFieldsFieldGet ( String domain, String field, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/cdash/domains/${domain}/fields/${field}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (domain == null) {
            throw new RuntimeException("missing required params domain")
        }
        // verify required params are set
        if (field == null) {
            throw new RuntimeException("missing required params field")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RootCdashDomainField.class )

    }

}
