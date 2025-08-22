package org.openapitools.api;

import org.openapitools.model.Health;
import org.openapitools.model.MaintenanceBody;

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
@Path("")
@Api(value = "/", description = "")
public interface StatusesApi  {

    @GET
    @Path("/health")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = Health.class) })
    public Health healthGet();

    @GET
    @Path("/mdr/maintenance")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = MaintenanceBody.class) })
    public MaintenanceBody mdrMaintenanceGet();
}
