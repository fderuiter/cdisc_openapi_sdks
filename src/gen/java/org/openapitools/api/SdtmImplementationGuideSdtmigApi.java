package org.openapitools.api;

import org.openapitools.model.DefaultErrorResponse;
import org.openapitools.model.ExportSdtmigDatasetsTable;
import org.openapitools.model.ExportSdtmigVariablesTable;
import org.openapitools.model.ExportSdtmigWorkbook;
import org.openapitools.model.RootSdtmigDatasetVariable;
import org.openapitools.model.SdtmigClass;
import org.openapitools.model.SdtmigClassDatasets;
import org.openapitools.model.SdtmigClasses;
import org.openapitools.model.SdtmigDataset;
import org.openapitools.model.SdtmigDatasetVariable;
import org.openapitools.model.SdtmigDatasetVariables;
import org.openapitools.model.SdtmigDatasets;
import org.openapitools.model.SdtmigProduct;
import org.openapitools.model.XmlRootSdtmigDatasetVariable;
import org.openapitools.model.XmlSdtmigClass;
import org.openapitools.model.XmlSdtmigClassDatasets;
import org.openapitools.model.XmlSdtmigClasses;
import org.openapitools.model.XmlSdtmigDataset;
import org.openapitools.model.XmlSdtmigDatasetVariable;
import org.openapitools.model.XmlSdtmigDatasetVariables;
import org.openapitools.model.XmlSdtmigDatasets;
import org.openapitools.model.XmlSdtmigProduct;

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
@Path("/mdr")
@Api(value = "/", description = "")
public interface SdtmImplementationGuideSdtmigApi  {

    @GET
    @Path("/root/sdtmig/datasets/{dataset}/variables/{var}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = RootSdtmigDatasetVariable.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public RootSdtmigDatasetVariable mdrRootSdtmigDatasetsDatasetVariablesVarGet(@PathParam("dataset") String dataset, @PathParam("var") String var);

    @GET
    @Path("/sdtmig/{version}/classes/{class}/datasets")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmigClassDatasets.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmigClassDatasets mdrSdtmigVersionClassesClassDatasetsGet(@PathParam("version") String version, @PathParam("class") String propertyClass);

    @GET
    @Path("/sdtmig/{version}/classes/{class}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmigClass.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmigClass mdrSdtmigVersionClassesClassGet(@PathParam("version") String version, @PathParam("class") String propertyClass);

    @GET
    @Path("/sdtmig/{version}/classes")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmigClasses.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmigClasses mdrSdtmigVersionClassesGet(@PathParam("version") String version);

    @GET
    @Path("/sdtmig/{version}/datasets/{dataset}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmigDataset.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmigDataset mdrSdtmigVersionDatasetsDatasetGet(@PathParam("version") String version, @PathParam("dataset") String dataset);

    @GET
    @Path("/sdtmig/{version}/datasets/{dataset}/variables")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmigDatasetVariables.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmigDatasetVariables mdrSdtmigVersionDatasetsDatasetVariablesGet(@PathParam("version") String version, @PathParam("dataset") String dataset);

    @GET
    @Path("/sdtmig/{version}/datasets/{dataset}/variables/{var}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmigDatasetVariable.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmigDatasetVariable mdrSdtmigVersionDatasetsDatasetVariablesVarGet(@PathParam("version") String version, @PathParam("dataset") String dataset, @PathParam("var") String var);

    @GET
    @Path("/sdtmig/{version}/datasets")
    @Produces({ "application/json", "application/xml", "text/csv" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmigDatasets.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmigDatasets mdrSdtmigVersionDatasetsGet(@PathParam("version") String version);

    @GET
    @Path("/sdtmig/{version}")
    @Produces({ "application/json", "application/xml", "text/csv", "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmigProduct.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmigProduct mdrSdtmigVersionGet(@PathParam("version") String version);
}
