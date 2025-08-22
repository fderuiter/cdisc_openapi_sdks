package org.openapitools.api;

import java.math.BigDecimal;
import org.openapitools.model.DefaultErrorResponse;
import org.openapitools.model.DefaultSearchResponse;
import org.openapitools.model.DefaultSearchScopes;
import org.openapitools.model.MdrSearchScopesGet200Response;
import org.openapitools.model.ScopeValues;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;

/**
 * CDISC Library API
 *
 * <p>REST API Documentation for CDISC Library in production server
 *
 */
@Path("/mdr/search")
@Api(value = "/", description = "")
public interface SearchesApi  {

    @GET
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = DefaultSearchResponse.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public DefaultSearchResponse mdrSearchGet(@QueryParam("q") String q, @QueryParam("highlight") String highlight, @QueryParam("start") @DefaultValue("0")BigDecimal start, @QueryParam("pageSize") @DefaultValue("100")BigDecimal pageSize, @QueryParam("class") String propertyClass, @QueryParam("codelist") String codelist, @QueryParam("conceptId") String conceptId, @QueryParam("core") String core, @QueryParam("dataStructure") String dataStructure, @QueryParam("datasetStructure") String datasetStructure, @QueryParam("definition") String definition, @QueryParam("description") String description, @QueryParam("domain") String domain, @QueryParam("effectiveDate") String effectiveDate, @QueryParam("extensible") String extensible, @QueryParam("href") String href, @QueryParam("label") String label, @QueryParam("measureType") String measureType, @QueryParam("name") String name, @QueryParam("preferredTerm") String preferredTerm, @QueryParam("product") String product, @QueryParam("productGroup") String productGroup, @QueryParam("registrationStatus") String registrationStatus, @QueryParam("roleDescription") String roleDescription, @QueryParam("sdtmTarget") String sdtmTarget, @QueryParam("simpleDatatype") String simpleDatatype, @QueryParam("submissionValue") String submissionValue, @QueryParam("synonyms") String synonyms, @QueryParam("type") String type, @QueryParam("uiHref") String uiHref, @QueryParam("valueDomain") String valueDomain, @QueryParam("variableSet") String variableSet, @QueryParam("version") String version);

    @GET
    @Path("/scopes")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = MdrSearchScopesGet200Response.class) })
    public MdrSearchScopesGet200Response mdrSearchScopesGet();

    @GET
    @Path("/scopes/{scope}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = ScopeValues.class) })
    public ScopeValues mdrSearchScopesScopeGet(@PathParam("scope") DefaultSearchScopes scope);
}
