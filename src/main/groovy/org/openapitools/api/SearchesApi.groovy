package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.DefaultErrorResponse
import org.openapitools.model.DefaultSearchResponse
import org.openapitools.model.DefaultSearchScopes
import org.openapitools.model.MdrSearchScopesGet200Response
import org.openapitools.model.ScopeValues

class SearchesApi {
    String basePath = "https://library.cdisc.org/api"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def mdrSearchGet ( String q, String highlight, BigDecimal start, BigDecimal pageSize, String propertyClass, String codelist, String conceptId, String core, String dataStructure, String datasetStructure, String definition, String description, String domain, String effectiveDate, String extensible, String href, String label, String measureType, String name, String preferredTerm, String product, String productGroup, String registrationStatus, String roleDescription, String sdtmTarget, String simpleDatatype, String submissionValue, String synonyms, String type, String uiHref, String valueDomain, String variableSet, String version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (q == null) {
            throw new RuntimeException("missing required params q")
        }

        if (q != null) {
            queryParams.put("q", q)
        }
        if (highlight != null) {
            queryParams.put("highlight", highlight)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (pageSize != null) {
            queryParams.put("pageSize", pageSize)
        }
        if (propertyClass != null) {
            queryParams.put("class", propertyClass)
        }
        if (codelist != null) {
            queryParams.put("codelist", codelist)
        }
        if (conceptId != null) {
            queryParams.put("conceptId", conceptId)
        }
        if (core != null) {
            queryParams.put("core", core)
        }
        if (dataStructure != null) {
            queryParams.put("dataStructure", dataStructure)
        }
        if (datasetStructure != null) {
            queryParams.put("datasetStructure", datasetStructure)
        }
        if (definition != null) {
            queryParams.put("definition", definition)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (domain != null) {
            queryParams.put("domain", domain)
        }
        if (effectiveDate != null) {
            queryParams.put("effectiveDate", effectiveDate)
        }
        if (extensible != null) {
            queryParams.put("extensible", extensible)
        }
        if (href != null) {
            queryParams.put("href", href)
        }
        if (label != null) {
            queryParams.put("label", label)
        }
        if (measureType != null) {
            queryParams.put("measureType", measureType)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (preferredTerm != null) {
            queryParams.put("preferredTerm", preferredTerm)
        }
        if (product != null) {
            queryParams.put("product", product)
        }
        if (productGroup != null) {
            queryParams.put("productGroup", productGroup)
        }
        if (registrationStatus != null) {
            queryParams.put("registrationStatus", registrationStatus)
        }
        if (roleDescription != null) {
            queryParams.put("roleDescription", roleDescription)
        }
        if (sdtmTarget != null) {
            queryParams.put("sdtmTarget", sdtmTarget)
        }
        if (simpleDatatype != null) {
            queryParams.put("simpleDatatype", simpleDatatype)
        }
        if (submissionValue != null) {
            queryParams.put("submissionValue", submissionValue)
        }
        if (synonyms != null) {
            queryParams.put("synonyms", synonyms)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (uiHref != null) {
            queryParams.put("uiHref", uiHref)
        }
        if (valueDomain != null) {
            queryParams.put("valueDomain", valueDomain)
        }
        if (variableSet != null) {
            queryParams.put("variableSet", variableSet)
        }
        if (version != null) {
            queryParams.put("version", version)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    DefaultSearchResponse.class )

    }

    def mdrSearchScopesGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/search/scopes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    MdrSearchScopesGet200Response.class )

    }

    def mdrSearchScopesScopeGet ( DefaultSearchScopes scope, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/mdr/search/scopes/${scope}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (scope == null) {
            throw new RuntimeException("missing required params scope")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ScopeValues.class )

    }

}
