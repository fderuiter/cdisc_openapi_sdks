package org.openapitools.api;

import org.openapitools.model.DefaultErrorResponse;
import org.openapitools.model.ExportSdtmDatasetsTable;
import org.openapitools.model.ExportSdtmVariablesTable;
import org.openapitools.model.ExportSdtmWorkbook;
import org.openapitools.model.RootSdtmClassVariable;
import org.openapitools.model.RootSdtmDatasetVariable;
import org.openapitools.model.SdtmClass;
import org.openapitools.model.SdtmClassDatasets;
import org.openapitools.model.SdtmClassVariable;
import org.openapitools.model.SdtmClassVariables;
import org.openapitools.model.SdtmClasses;
import org.openapitools.model.SdtmDataset;
import org.openapitools.model.SdtmDatasetVariable;
import org.openapitools.model.SdtmDatasetVariables;
import org.openapitools.model.SdtmDatasets;
import org.openapitools.model.SdtmProduct;
import org.openapitools.model.XmlRootSdtmClassVariable;
import org.openapitools.model.XmlRootSdtmDatasetVariable;
import org.openapitools.model.XmlSdtmClass;
import org.openapitools.model.XmlSdtmClassDatasets;
import org.openapitools.model.XmlSdtmClassVariable;
import org.openapitools.model.XmlSdtmClassVariables;
import org.openapitools.model.XmlSdtmClasses;
import org.openapitools.model.XmlSdtmDataset;
import org.openapitools.model.XmlSdtmDatasetVariable;
import org.openapitools.model.XmlSdtmDatasetVariables;
import org.openapitools.model.XmlSdtmDatasets;
import org.openapitools.model.XmlSdtmProduct;

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
public interface StudyDataTabulationModelSdtmApi  {

    @GET
    @Path("/root/sdtm/classes/{class}/variables/{var}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = RootSdtmClassVariable.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public RootSdtmClassVariable mdrRootSdtmClassesClassVariablesVarGet(@PathParam("class") String propertyClass, @PathParam("var") String var);

    @GET
    @Path("/root/sdtm/datasets/{dataset}/variables/{var}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = RootSdtmDatasetVariable.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public RootSdtmDatasetVariable mdrRootSdtmDatasetsDatasetVariablesVarGet(@PathParam("dataset") String dataset, @PathParam("var") String var);

    @GET
    @Path("/sdtm/{version}/classes/{class}/datasets")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmClassDatasets.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmClassDatasets mdrSdtmVersionClassesClassDatasetsGet(@PathParam("version") String version, @PathParam("class") String propertyClass);

    @GET
    @Path("/sdtm/{version}/classes/{class}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmClass.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmClass mdrSdtmVersionClassesClassGet(@PathParam("version") String version, @PathParam("class") String propertyClass);

    @GET
    @Path("/sdtm/{version}/classes/{class}/variables")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmClassVariables.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmClassVariables mdrSdtmVersionClassesClassVariablesGet(@PathParam("version") String version, @PathParam("class") String propertyClass);

    @GET
    @Path("/sdtm/{version}/classes/{class}/variables/{var}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmClassVariable.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmClassVariable mdrSdtmVersionClassesClassVariablesVarGet(@PathParam("version") String version, @PathParam("class") String propertyClass, @PathParam("var") String var);

    @GET
    @Path("/sdtm/{version}/classes")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmClasses.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmClasses mdrSdtmVersionClassesGet(@PathParam("version") String version);

    @GET
    @Path("/sdtm/{version}/datasets/{dataset}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmDataset.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmDataset mdrSdtmVersionDatasetsDatasetGet(@PathParam("version") String version, @PathParam("dataset") String dataset);

    @GET
    @Path("/sdtm/{version}/datasets/{dataset}/variables")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmDatasetVariables.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmDatasetVariables mdrSdtmVersionDatasetsDatasetVariablesGet(@PathParam("version") String version, @PathParam("dataset") String dataset);

    @GET
    @Path("/sdtm/{version}/datasets/{dataset}/variables/{var}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmDatasetVariable.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmDatasetVariable mdrSdtmVersionDatasetsDatasetVariablesVarGet(@PathParam("version") String version, @PathParam("dataset") String dataset, @PathParam("var") String var);

    @GET
    @Path("/sdtm/{version}/datasets")
    @Produces({ "application/json", "application/xml", "text/csv" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmDatasets.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmDatasets mdrSdtmVersionDatasetsGet(@PathParam("version") String version);

    @GET
    @Path("/sdtm/{version}")
    @Produces({ "application/json", "application/xml", "text/csv", "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = SdtmProduct.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public SdtmProduct mdrSdtmVersionGet(@PathParam("version") String version);
}
