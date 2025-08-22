package org.openapitools.api;

import org.openapitools.model.AdamDatastructure;
import org.openapitools.model.AdamDatastructureVariables;
import org.openapitools.model.AdamDatastructureVarsets;
import org.openapitools.model.AdamProduct;
import org.openapitools.model.AdamProductDatastructures;
import org.openapitools.model.AdamVariable;
import org.openapitools.model.AdamVarset;
import org.openapitools.model.DefaultErrorResponse;
import org.openapitools.model.ExportAdamDatastructuresTable;
import org.openapitools.model.ExportAdamVariablesTable;
import org.openapitools.model.ExportAdamWorkbook;
import org.openapitools.model.XmlAdamDatastructure;
import org.openapitools.model.XmlAdamDatastructureVariables;
import org.openapitools.model.XmlAdamDatastructureVarsets;
import org.openapitools.model.XmlAdamProduct;
import org.openapitools.model.XmlAdamProductDatastructures;
import org.openapitools.model.XmlAdamVariable;
import org.openapitools.model.XmlAdamVarset;

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
@Path("/mdr/adam/{product}")
@Api(value = "/", description = "")
public interface AnalysisDataModelAndImplementationGuideAdaMAndAdaMigApi  {

    @GET
    @Path("/datastructures")
    @Produces({ "application/json", "application/xml", "text/csv" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = AdamProductDatastructures.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public AdamProductDatastructures mdrAdamProductDatastructuresGet(@PathParam("product") String product);

    @GET
    @Path("/datastructures/{structure}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = AdamDatastructure.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public AdamDatastructure mdrAdamProductDatastructuresStructureGet(@PathParam("product") String product, @PathParam("structure") String structure);

    @GET
    @Path("/datastructures/{structure}/variables")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = AdamDatastructureVariables.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public AdamDatastructureVariables mdrAdamProductDatastructuresStructureVariablesGet(@PathParam("product") String product, @PathParam("structure") String structure);

    @GET
    @Path("/datastructures/{structure}/variables/{var}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = AdamVariable.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public AdamVariable mdrAdamProductDatastructuresStructureVariablesVarGet(@PathParam("product") String product, @PathParam("structure") String structure, @PathParam("var") String var);

    @GET
    @Path("/datastructures/{structure}/varsets")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = AdamDatastructureVarsets.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public AdamDatastructureVarsets mdrAdamProductDatastructuresStructureVarsetsGet(@PathParam("product") String product, @PathParam("structure") String structure);

    @GET
    @Path("/datastructures/{structure}/varsets/{varset}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = AdamVarset.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public AdamVarset mdrAdamProductDatastructuresStructureVarsetsVarsetGet(@PathParam("product") String product, @PathParam("structure") String structure, @PathParam("varset") String varset);

    @GET
    
    @Produces({ "application/json", "application/xml", "text/csv", "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = AdamProduct.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public AdamProduct mdrAdamProductGet(@PathParam("product") String product);
}
