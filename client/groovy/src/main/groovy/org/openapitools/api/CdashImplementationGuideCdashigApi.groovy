package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CdashigClass
import org.openapitools.model.CdashigClassDomains
import org.openapitools.model.CdashigClassScenarios
import org.openapitools.model.CdashigDomain
import org.openapitools.model.CdashigDomainField
import org.openapitools.model.CdashigDomainFields
import org.openapitools.model.CdashigProduct
import org.openapitools.model.CdashigProductClasses
import org.openapitools.model.CdashigProductDomains
import org.openapitools.model.CdashigProductScenarios
import org.openapitools.model.CdashigScenario
import org.openapitools.model.CdashigScenarioField
import org.openapitools.model.CdashigScenarioFields
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.ExportCdashigTable
import org.openapitools.model.RootCdashigDomainField
import org.openapitools.model.RootCdashigScenarioField
import org.openapitools.model.XmlCdashigClass
import org.openapitools.model.XmlCdashigClassDomains
import org.openapitools.model.XmlCdashigClassScenarios
import org.openapitools.model.XmlCdashigDomain
import org.openapitools.model.XmlCdashigDomainField
import org.openapitools.model.XmlCdashigDomainFields
import org.openapitools.model.XmlCdashigProduct
import org.openapitools.model.XmlCdashigProductClasses
import org.openapitools.model.XmlCdashigProductDomains
import org.openapitools.model.XmlCdashigProductScenarios
import org.openapitools.model.XmlCdashigScenario
import org.openapitools.model.XmlCdashigScenarioField
import org.openapitools.model.XmlCdashigScenarioFields
import org.openapitools.model.XmlRootCdashigDomainField
import org.openapitools.model.XmlRootCdashigScenarioField

class CdashImplementationGuideCdashigApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrCdashigVersionClassesClassDomainsGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/classes/${class}/domains"

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
                    CdashigClassDomains.class )

    }

    def mdrCdashigVersionClassesClassGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/classes/${class}"

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
                    CdashigClass.class )

    }

    def mdrCdashigVersionClassesClassScenariosGet ( String version, String propertyClass, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/classes/${class}/scenarios"

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
                    CdashigClassScenarios.class )

    }

    def mdrCdashigVersionClassesGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/classes"

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
                    CdashigProductClasses.class )

    }

    def mdrCdashigVersionDomainsDomainFieldsFieldGet ( String version, String domain, String field, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/domains/${domain}/fields/${field}"

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
                    CdashigDomainField.class )

    }

    def mdrCdashigVersionDomainsDomainFieldsGet ( String version, String domain, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/domains/${domain}/fields"

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
                    CdashigDomainFields.class )

    }

    def mdrCdashigVersionDomainsDomainGet ( String version, String domain, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/domains/${domain}"

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
                    CdashigDomain.class )

    }

    def mdrCdashigVersionDomainsGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/domains"

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
                    CdashigProductDomains.class )

    }

    def mdrCdashigVersionGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}"

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
                    CdashigProduct.class )

    }

    def mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet ( String version, String domain, String scenario, String field, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/scenarios/${domain}.${scenario}/fields/${field}"

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
        if (scenario == null) {
            throw new RuntimeException("missing required params scenario")
        }
        // verify required params are set
        if (field == null) {
            throw new RuntimeException("missing required params field")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CdashigScenarioField.class )

    }

    def mdrCdashigVersionScenariosDomainScenarioFieldsGet ( String version, String domain, String scenario, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/scenarios/${domain}.${scenario}/fields"

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
        if (scenario == null) {
            throw new RuntimeException("missing required params scenario")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CdashigScenarioFields.class )

    }

    def mdrCdashigVersionScenariosDomainScenarioGet ( String version, String domain, String scenario, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/scenarios/${domain}.${scenario}"

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
        if (scenario == null) {
            throw new RuntimeException("missing required params scenario")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CdashigScenario.class )

    }

    def mdrCdashigVersionScenariosGet ( String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/cdashig/${version}/scenarios"

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
                    CdashigProductScenarios.class )

    }

    def mdrRootCdashigDomainsDomainFieldsFieldGet ( String domain, String field, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/cdashig/domains/${domain}/fields/${field}"

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
                    RootCdashigDomainField.class )

    }

    def mdrRootCdashigScenariosDomainScenarioFieldsFieldGet ( String domain, String scenario, String field, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/root/cdashig/scenarios/${domain}.${scenario}/fields/${field}"

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
        if (scenario == null) {
            throw new RuntimeException("missing required params scenario")
        }
        // verify required params are set
        if (field == null) {
            throw new RuntimeException("missing required params field")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RootCdashigScenarioField.class )

    }

}
