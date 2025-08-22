package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

import org.openapitools.client.api.CdashClass
import org.openapitools.client.api.CdashClassDomains
import org.openapitools.client.api.CdashClassField
import org.openapitools.client.api.CdashDomain
import org.openapitools.client.api.CdashDomainField
import org.openapitools.client.api.CdashDomainFields
import org.openapitools.client.api.CdashProduct
import org.openapitools.client.api.CdashProductClasses
import org.openapitools.client.api.CdashProductDomains
import org.openapitools.client.api.DefaultErrorResponse
import org.openapitools.client.api.ExportCdashTable
import org.openapitools.client.api.RootCdashClassField
import org.openapitools.client.api.RootCdashDomainField
import org.openapitools.client.api.XmlCdashClass
import org.openapitools.client.api.XmlCdashClassDomains
import org.openapitools.client.api.XmlCdashClassField
import org.openapitools.client.api.XmlCdashDomain
import org.openapitools.client.api.XmlCdashDomainField
import org.openapitools.client.api.XmlCdashDomainFields
import org.openapitools.client.api.XmlCdashProduct
import org.openapitools.client.api.XmlCdashProductClasses
import org.openapitools.client.api.XmlCdashProductDomains
import org.openapitools.client.api.XmlRootCdashClassField
import org.openapitools.client.api.XmlRootCdashDomainField

object ClinicalDataAcquisitionStandardsHarmonizationCDASHApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrCdashVersionClassesClassDomainsGet(host: String, version: String, `class`: String): Task[CdashClassDomains] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashClassDomains] = jsonOf[CdashClassDomains]

    val path = "/mdr/cdash/{version}/classes/{class}/domains".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashClassDomains](req)

    } yield resp
  }

  def mdrCdashVersionClassesClassFieldsFieldGet(host: String, version: String, `class`: String, field: String): Task[CdashClassField] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashClassField] = jsonOf[CdashClassField]

    val path = "/mdr/cdash/{version}/classes/{class}/fields/{field}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashClassField](req)

    } yield resp
  }

  def mdrCdashVersionClassesClassGet(host: String, version: String, `class`: String): Task[CdashClass] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashClass] = jsonOf[CdashClass]

    val path = "/mdr/cdash/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashClass](req)

    } yield resp
  }

  def mdrCdashVersionClassesGet(host: String, version: String): Task[CdashProductClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashProductClasses] = jsonOf[CdashProductClasses]

    val path = "/mdr/cdash/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashProductClasses](req)

    } yield resp
  }

  def mdrCdashVersionDomainsDomainFieldsFieldGet(host: String, version: String, domain: String, field: String): Task[CdashDomainField] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashDomainField] = jsonOf[CdashDomainField]

    val path = "/mdr/cdash/{version}/domains/{domain}/fields/{field}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashDomainField](req)

    } yield resp
  }

  def mdrCdashVersionDomainsDomainFieldsGet(host: String, version: String, domain: String): Task[CdashDomainFields] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashDomainFields] = jsonOf[CdashDomainFields]

    val path = "/mdr/cdash/{version}/domains/{domain}/fields".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashDomainFields](req)

    } yield resp
  }

  def mdrCdashVersionDomainsDomainGet(host: String, version: String, domain: String): Task[CdashDomain] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashDomain] = jsonOf[CdashDomain]

    val path = "/mdr/cdash/{version}/domains/{domain}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashDomain](req)

    } yield resp
  }

  def mdrCdashVersionDomainsGet(host: String, version: String): Task[CdashProductDomains] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashProductDomains] = jsonOf[CdashProductDomains]

    val path = "/mdr/cdash/{version}/domains".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashProductDomains](req)

    } yield resp
  }

  def mdrCdashVersionGet(host: String, version: String): Task[CdashProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashProduct] = jsonOf[CdashProduct]

    val path = "/mdr/cdash/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashProduct](req)

    } yield resp
  }

  def mdrRootCdashClassesClassFieldsFieldGet(host: String, `class`: String, field: String): Task[RootCdashClassField] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCdashClassField] = jsonOf[RootCdashClassField]

    val path = "/mdr/root/cdash/classes/{class}/fields/{field}".replaceAll("\\{" + "class" + "\\}",escape(`class`.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RootCdashClassField](req)

    } yield resp
  }

  def mdrRootCdashDomainsDomainFieldsFieldGet(host: String, domain: String, field: String): Task[RootCdashDomainField] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCdashDomainField] = jsonOf[RootCdashDomainField]

    val path = "/mdr/root/cdash/domains/{domain}/fields/{field}".replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RootCdashDomainField](req)

    } yield resp
  }

}

class HttpServiceClinicalDataAcquisitionStandardsHarmonizationCDASHApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrCdashVersionClassesClassDomainsGet(version: String, `class`: String): Task[CdashClassDomains] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashClassDomains] = jsonOf[CdashClassDomains]

    val path = "/mdr/cdash/{version}/classes/{class}/domains".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashClassDomains](req)

    } yield resp
  }

  def mdrCdashVersionClassesClassFieldsFieldGet(version: String, `class`: String, field: String): Task[CdashClassField] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashClassField] = jsonOf[CdashClassField]

    val path = "/mdr/cdash/{version}/classes/{class}/fields/{field}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashClassField](req)

    } yield resp
  }

  def mdrCdashVersionClassesClassGet(version: String, `class`: String): Task[CdashClass] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashClass] = jsonOf[CdashClass]

    val path = "/mdr/cdash/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashClass](req)

    } yield resp
  }

  def mdrCdashVersionClassesGet(version: String): Task[CdashProductClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashProductClasses] = jsonOf[CdashProductClasses]

    val path = "/mdr/cdash/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashProductClasses](req)

    } yield resp
  }

  def mdrCdashVersionDomainsDomainFieldsFieldGet(version: String, domain: String, field: String): Task[CdashDomainField] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashDomainField] = jsonOf[CdashDomainField]

    val path = "/mdr/cdash/{version}/domains/{domain}/fields/{field}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashDomainField](req)

    } yield resp
  }

  def mdrCdashVersionDomainsDomainFieldsGet(version: String, domain: String): Task[CdashDomainFields] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashDomainFields] = jsonOf[CdashDomainFields]

    val path = "/mdr/cdash/{version}/domains/{domain}/fields".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashDomainFields](req)

    } yield resp
  }

  def mdrCdashVersionDomainsDomainGet(version: String, domain: String): Task[CdashDomain] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashDomain] = jsonOf[CdashDomain]

    val path = "/mdr/cdash/{version}/domains/{domain}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashDomain](req)

    } yield resp
  }

  def mdrCdashVersionDomainsGet(version: String): Task[CdashProductDomains] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashProductDomains] = jsonOf[CdashProductDomains]

    val path = "/mdr/cdash/{version}/domains".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashProductDomains](req)

    } yield resp
  }

  def mdrCdashVersionGet(version: String): Task[CdashProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashProduct] = jsonOf[CdashProduct]

    val path = "/mdr/cdash/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CdashProduct](req)

    } yield resp
  }

  def mdrRootCdashClassesClassFieldsFieldGet(`class`: String, field: String): Task[RootCdashClassField] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCdashClassField] = jsonOf[RootCdashClassField]

    val path = "/mdr/root/cdash/classes/{class}/fields/{field}".replaceAll("\\{" + "class" + "\\}",escape(`class`.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RootCdashClassField](req)

    } yield resp
  }

  def mdrRootCdashDomainsDomainFieldsFieldGet(domain: String, field: String): Task[RootCdashDomainField] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCdashDomainField] = jsonOf[RootCdashDomainField]

    val path = "/mdr/root/cdash/domains/{domain}/fields/{field}".replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RootCdashDomainField](req)

    } yield resp
  }

}
