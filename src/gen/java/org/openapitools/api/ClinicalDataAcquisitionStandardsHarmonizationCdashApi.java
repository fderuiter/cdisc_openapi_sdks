package org.openapitools.api;

import org.openapitools.model.CdashClass;
import org.openapitools.model.CdashClassDomains;
import org.openapitools.model.CdashClassField;
import org.openapitools.model.CdashDomain;
import org.openapitools.model.CdashDomainField;
import org.openapitools.model.CdashDomainFields;
import org.openapitools.model.CdashProduct;
import org.openapitools.model.CdashProductClasses;
import org.openapitools.model.CdashProductDomains;
import org.openapitools.model.DefaultErrorResponse;
import org.openapitools.model.ExportCdashTable;
import org.openapitools.model.RootCdashClassField;
import org.openapitools.model.RootCdashDomainField;
import org.openapitools.model.XmlCdashClass;
import org.openapitools.model.XmlCdashClassDomains;
import org.openapitools.model.XmlCdashClassField;
import org.openapitools.model.XmlCdashDomain;
import org.openapitools.model.XmlCdashDomainField;
import org.openapitools.model.XmlCdashDomainFields;
import org.openapitools.model.XmlCdashProduct;
import org.openapitools.model.XmlCdashProductClasses;
import org.openapitools.model.XmlCdashProductDomains;
import org.openapitools.model.XmlRootCdashClassField;
import org.openapitools.model.XmlRootCdashDomainField;

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
public interface ClinicalDataAcquisitionStandardsHarmonizationCdashApi  {

    @GET
    @Path("/cdash/{version}/classes/{class}/domains")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashClassDomains.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashClassDomains mdrCdashVersionClassesClassDomainsGet(@PathParam("version") String version, @PathParam("class") String propertyClass);

    @GET
    @Path("/cdash/{version}/classes/{class}/fields/{field}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashClassField.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashClassField mdrCdashVersionClassesClassFieldsFieldGet(@PathParam("version") String version, @PathParam("class") String propertyClass, @PathParam("field") String field);

    @GET
    @Path("/cdash/{version}/classes/{class}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashClass.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashClass mdrCdashVersionClassesClassGet(@PathParam("version") String version, @PathParam("class") String propertyClass);

    @GET
    @Path("/cdash/{version}/classes")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashProductClasses.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashProductClasses mdrCdashVersionClassesGet(@PathParam("version") String version);

    @GET
    @Path("/cdash/{version}/domains/{domain}/fields/{field}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashDomainField.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashDomainField mdrCdashVersionDomainsDomainFieldsFieldGet(@PathParam("version") String version, @PathParam("domain") String domain, @PathParam("field") String field);

    @GET
    @Path("/cdash/{version}/domains/{domain}/fields")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashDomainFields.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashDomainFields mdrCdashVersionDomainsDomainFieldsGet(@PathParam("version") String version, @PathParam("domain") String domain);

    @GET
    @Path("/cdash/{version}/domains/{domain}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashDomain.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashDomain mdrCdashVersionDomainsDomainGet(@PathParam("version") String version, @PathParam("domain") String domain);

    @GET
    @Path("/cdash/{version}/domains")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashProductDomains.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashProductDomains mdrCdashVersionDomainsGet(@PathParam("version") String version);

    @GET
    @Path("/cdash/{version}")
    @Produces({ "application/json", "application/xml", "text/csv", "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = CdashProduct.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public CdashProduct mdrCdashVersionGet(@PathParam("version") String version);

    @GET
    @Path("/root/cdash/classes/{class}/fields/{field}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = RootCdashClassField.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public RootCdashClassField mdrRootCdashClassesClassFieldsFieldGet(@PathParam("class") String propertyClass, @PathParam("field") String field);

    @GET
    @Path("/root/cdash/domains/{domain}/fields/{field}")
    @Produces({ "application/json", "application/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = RootCdashDomainField.class),
        @ApiResponse(code = 400, message = "Bad Request", response = DefaultErrorResponse.class),
        @ApiResponse(code = 401, message = "Unauthorized", response = DefaultErrorResponse.class),
        @ApiResponse(code = 403, message = "Forbidden", response = DefaultErrorResponse.class),
        @ApiResponse(code = 404, message = "Not Found", response = DefaultErrorResponse.class),
        @ApiResponse(code = 405, message = "Method Not Allowed", response = DefaultErrorResponse.class),
        @ApiResponse(code = 406, message = "Not Acceptable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = DefaultErrorResponse.class),
        @ApiResponse(code = 503, message = "Service Unavailable", response = DefaultErrorResponse.class),
        @ApiResponse(code = 504, message = "Gateway Timeout Error", response = DefaultErrorResponse.class) })
    public RootCdashDomainField mdrRootCdashDomainsDomainFieldsFieldGet(@PathParam("domain") String domain, @PathParam("field") String field);
}
