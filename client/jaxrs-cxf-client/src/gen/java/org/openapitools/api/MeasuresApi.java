package org.openapitools.api;

import org.openapitools.model.DefaultErrorResponse;
import org.openapitools.model.ExportQrsItemsTable;
import org.openapitools.model.ExportQrsWorkbook;
import org.openapitools.model.QrsItem;
import org.openapitools.model.QrsItems;
import org.openapitools.model.QrsProduct;
import org.openapitools.model.QrsResponsegroup;
import org.openapitools.model.QrsResponsegroups;
import org.openapitools.model.XmlQrsItem;
import org.openapitools.model.XmlQrsItems;
import org.openapitools.model.XmlQrsProduct;
import org.openapitools.model.XmlQrsResponsegroup;
import org.openapitools.model.XmlQrsResponsegroups;

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
@Path("/mdr/qrs/{measure}/{version}")
@Api(value = "/", description = "")
public interface MeasuresApi  {

    @GET
    
    @Produces({ "application/json", "application/xml", "text/csv", "application/vnd.ms-excel" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = QrsProduct.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public QrsProduct mdrQrsMeasureVersionGet(@PathParam("measure") String measure, @PathParam("version") String version);

    @GET
    @Path("/items")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = QrsItems.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public QrsItems mdrQrsMeasureVersionItemsGet(@PathParam("measure") String measure, @PathParam("version") String version);

    @GET
    @Path("/items/{item}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = QrsItem.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public QrsItem mdrQrsMeasureVersionItemsItemGet(@PathParam("measure") String measure, @PathParam("version") String version, @PathParam("item") String item);

    @GET
    @Path("/responsegroups")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = QrsResponsegroups.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public QrsResponsegroups mdrQrsMeasureVersionResponsegroupsGet(@PathParam("measure") String measure, @PathParam("version") String version);

    @GET
    @Path("/responsegroups/{responsegroup}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = QrsResponsegroup.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public QrsResponsegroup mdrQrsMeasureVersionResponsegroupsResponsegroupGet(@PathParam("measure") String measure, @PathParam("version") String version, @PathParam("responsegroup") String responsegroup);
}
