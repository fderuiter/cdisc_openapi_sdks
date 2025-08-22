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

import org.openapitools.client.api.CdashigClass
import org.openapitools.client.api.CdashigClassDomains
import org.openapitools.client.api.CdashigClassScenarios
import org.openapitools.client.api.CdashigDomain
import org.openapitools.client.api.CdashigDomainField
import org.openapitools.client.api.CdashigDomainFields
import org.openapitools.client.api.CdashigProduct
import org.openapitools.client.api.CdashigProductClasses
import org.openapitools.client.api.CdashigProductDomains
import org.openapitools.client.api.CdashigProductScenarios
import org.openapitools.client.api.CdashigScenario
import org.openapitools.client.api.CdashigScenarioField
import org.openapitools.client.api.CdashigScenarioFields
import org.openapitools.client.api.DefaultErrorResponse
import org.openapitools.client.api.ExportCdashigTable
import org.openapitools.client.api.RootCdashigDomainField
import org.openapitools.client.api.RootCdashigScenarioField
import org.openapitools.client.api.XmlCdashigClass
import org.openapitools.client.api.XmlCdashigClassDomains
import org.openapitools.client.api.XmlCdashigClassScenarios
import org.openapitools.client.api.XmlCdashigDomain
import org.openapitools.client.api.XmlCdashigDomainField
import org.openapitools.client.api.XmlCdashigDomainFields
import org.openapitools.client.api.XmlCdashigProduct
import org.openapitools.client.api.XmlCdashigProductClasses
import org.openapitools.client.api.XmlCdashigProductDomains
import org.openapitools.client.api.XmlCdashigProductScenarios
import org.openapitools.client.api.XmlCdashigScenario
import org.openapitools.client.api.XmlCdashigScenarioField
import org.openapitools.client.api.XmlCdashigScenarioFields
import org.openapitools.client.api.XmlRootCdashigDomainField
import org.openapitools.client.api.XmlRootCdashigScenarioField

object CDASHImplementationGuideCDASHIGApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrCdashigVersionClassesClassDomainsGet(host: String, version: String, `class`: String): Task[CdashigClassDomains] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigClassDomains] = jsonOf[CdashigClassDomains]

    val path = "/mdr/cdashig/{version}/classes/{class}/domains".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[CdashigClassDomains](req)

    } yield resp
  }

  def mdrCdashigVersionClassesClassGet(host: String, version: String, `class`: String): Task[CdashigClass] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigClass] = jsonOf[CdashigClass]

    val path = "/mdr/cdashig/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[CdashigClass](req)

    } yield resp
  }

  def mdrCdashigVersionClassesClassScenariosGet(host: String, version: String, `class`: String): Task[CdashigClassScenarios] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigClassScenarios] = jsonOf[CdashigClassScenarios]

    val path = "/mdr/cdashig/{version}/classes/{class}/scenarios".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[CdashigClassScenarios](req)

    } yield resp
  }

  def mdrCdashigVersionClassesGet(host: String, version: String): Task[CdashigProductClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigProductClasses] = jsonOf[CdashigProductClasses]

    val path = "/mdr/cdashig/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[CdashigProductClasses](req)

    } yield resp
  }

  def mdrCdashigVersionDomainsDomainFieldsFieldGet(host: String, version: String, domain: String, field: String): Task[CdashigDomainField] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigDomainField] = jsonOf[CdashigDomainField]

    val path = "/mdr/cdashig/{version}/domains/{domain}/fields/{field}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

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
      resp          <- client.expect[CdashigDomainField](req)

    } yield resp
  }

  def mdrCdashigVersionDomainsDomainFieldsGet(host: String, version: String, domain: String): Task[CdashigDomainFields] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigDomainFields] = jsonOf[CdashigDomainFields]

    val path = "/mdr/cdashig/{version}/domains/{domain}/fields".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString))

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
      resp          <- client.expect[CdashigDomainFields](req)

    } yield resp
  }

  def mdrCdashigVersionDomainsDomainGet(host: String, version: String, domain: String): Task[CdashigDomain] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigDomain] = jsonOf[CdashigDomain]

    val path = "/mdr/cdashig/{version}/domains/{domain}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString))

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
      resp          <- client.expect[CdashigDomain](req)

    } yield resp
  }

  def mdrCdashigVersionDomainsGet(host: String, version: String): Task[CdashigProductDomains] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigProductDomains] = jsonOf[CdashigProductDomains]

    val path = "/mdr/cdashig/{version}/domains".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[CdashigProductDomains](req)

    } yield resp
  }

  def mdrCdashigVersionGet(host: String, version: String): Task[CdashigProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigProduct] = jsonOf[CdashigProduct]

    val path = "/mdr/cdashig/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[CdashigProduct](req)

    } yield resp
  }

  def mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(host: String, version: String, domain: String, scenario: String, field: String): Task[CdashigScenarioField] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigScenarioField] = jsonOf[CdashigScenarioField]

    val path = "/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "scenario" + "\\}",escape(scenario.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

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
      resp          <- client.expect[CdashigScenarioField](req)

    } yield resp
  }

  def mdrCdashigVersionScenariosDomainScenarioFieldsGet(host: String, version: String, domain: String, scenario: String): Task[CdashigScenarioFields] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigScenarioFields] = jsonOf[CdashigScenarioFields]

    val path = "/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "scenario" + "\\}",escape(scenario.toString))

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
      resp          <- client.expect[CdashigScenarioFields](req)

    } yield resp
  }

  def mdrCdashigVersionScenariosDomainScenarioGet(host: String, version: String, domain: String, scenario: String): Task[CdashigScenario] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigScenario] = jsonOf[CdashigScenario]

    val path = "/mdr/cdashig/{version}/scenarios/{domain}.{scenario}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "scenario" + "\\}",escape(scenario.toString))

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
      resp          <- client.expect[CdashigScenario](req)

    } yield resp
  }

  def mdrCdashigVersionScenariosGet(host: String, version: String): Task[CdashigProductScenarios] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigProductScenarios] = jsonOf[CdashigProductScenarios]

    val path = "/mdr/cdashig/{version}/scenarios".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[CdashigProductScenarios](req)

    } yield resp
  }

  def mdrRootCdashigDomainsDomainFieldsFieldGet(host: String, domain: String, field: String): Task[RootCdashigDomainField] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCdashigDomainField] = jsonOf[RootCdashigDomainField]

    val path = "/mdr/root/cdashig/domains/{domain}/fields/{field}".replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

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
      resp          <- client.expect[RootCdashigDomainField](req)

    } yield resp
  }

  def mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(host: String, domain: String, scenario: String, field: String): Task[RootCdashigScenarioField] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCdashigScenarioField] = jsonOf[RootCdashigScenarioField]

    val path = "/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}".replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "scenario" + "\\}",escape(scenario.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

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
      resp          <- client.expect[RootCdashigScenarioField](req)

    } yield resp
  }

}

class HttpServiceCDASHImplementationGuideCDASHIGApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrCdashigVersionClassesClassDomainsGet(version: String, `class`: String): Task[CdashigClassDomains] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigClassDomains] = jsonOf[CdashigClassDomains]

    val path = "/mdr/cdashig/{version}/classes/{class}/domains".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[CdashigClassDomains](req)

    } yield resp
  }

  def mdrCdashigVersionClassesClassGet(version: String, `class`: String): Task[CdashigClass] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigClass] = jsonOf[CdashigClass]

    val path = "/mdr/cdashig/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[CdashigClass](req)

    } yield resp
  }

  def mdrCdashigVersionClassesClassScenariosGet(version: String, `class`: String): Task[CdashigClassScenarios] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigClassScenarios] = jsonOf[CdashigClassScenarios]

    val path = "/mdr/cdashig/{version}/classes/{class}/scenarios".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[CdashigClassScenarios](req)

    } yield resp
  }

  def mdrCdashigVersionClassesGet(version: String): Task[CdashigProductClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigProductClasses] = jsonOf[CdashigProductClasses]

    val path = "/mdr/cdashig/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[CdashigProductClasses](req)

    } yield resp
  }

  def mdrCdashigVersionDomainsDomainFieldsFieldGet(version: String, domain: String, field: String): Task[CdashigDomainField] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigDomainField] = jsonOf[CdashigDomainField]

    val path = "/mdr/cdashig/{version}/domains/{domain}/fields/{field}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

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
      resp          <- client.expect[CdashigDomainField](req)

    } yield resp
  }

  def mdrCdashigVersionDomainsDomainFieldsGet(version: String, domain: String): Task[CdashigDomainFields] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigDomainFields] = jsonOf[CdashigDomainFields]

    val path = "/mdr/cdashig/{version}/domains/{domain}/fields".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString))

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
      resp          <- client.expect[CdashigDomainFields](req)

    } yield resp
  }

  def mdrCdashigVersionDomainsDomainGet(version: String, domain: String): Task[CdashigDomain] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigDomain] = jsonOf[CdashigDomain]

    val path = "/mdr/cdashig/{version}/domains/{domain}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString))

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
      resp          <- client.expect[CdashigDomain](req)

    } yield resp
  }

  def mdrCdashigVersionDomainsGet(version: String): Task[CdashigProductDomains] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigProductDomains] = jsonOf[CdashigProductDomains]

    val path = "/mdr/cdashig/{version}/domains".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[CdashigProductDomains](req)

    } yield resp
  }

  def mdrCdashigVersionGet(version: String): Task[CdashigProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigProduct] = jsonOf[CdashigProduct]

    val path = "/mdr/cdashig/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[CdashigProduct](req)

    } yield resp
  }

  def mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version: String, domain: String, scenario: String, field: String): Task[CdashigScenarioField] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigScenarioField] = jsonOf[CdashigScenarioField]

    val path = "/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "scenario" + "\\}",escape(scenario.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

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
      resp          <- client.expect[CdashigScenarioField](req)

    } yield resp
  }

  def mdrCdashigVersionScenariosDomainScenarioFieldsGet(version: String, domain: String, scenario: String): Task[CdashigScenarioFields] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigScenarioFields] = jsonOf[CdashigScenarioFields]

    val path = "/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "scenario" + "\\}",escape(scenario.toString))

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
      resp          <- client.expect[CdashigScenarioFields](req)

    } yield resp
  }

  def mdrCdashigVersionScenariosDomainScenarioGet(version: String, domain: String, scenario: String): Task[CdashigScenario] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigScenario] = jsonOf[CdashigScenario]

    val path = "/mdr/cdashig/{version}/scenarios/{domain}.{scenario}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "scenario" + "\\}",escape(scenario.toString))

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
      resp          <- client.expect[CdashigScenario](req)

    } yield resp
  }

  def mdrCdashigVersionScenariosGet(version: String): Task[CdashigProductScenarios] = {
    implicit val returnTypeDecoder: EntityDecoder[CdashigProductScenarios] = jsonOf[CdashigProductScenarios]

    val path = "/mdr/cdashig/{version}/scenarios".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[CdashigProductScenarios](req)

    } yield resp
  }

  def mdrRootCdashigDomainsDomainFieldsFieldGet(domain: String, field: String): Task[RootCdashigDomainField] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCdashigDomainField] = jsonOf[RootCdashigDomainField]

    val path = "/mdr/root/cdashig/domains/{domain}/fields/{field}".replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

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
      resp          <- client.expect[RootCdashigDomainField](req)

    } yield resp
  }

  def mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain: String, scenario: String, field: String): Task[RootCdashigScenarioField] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCdashigScenarioField] = jsonOf[RootCdashigScenarioField]

    val path = "/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}".replaceAll("\\{" + "domain" + "\\}",escape(domain.toString)).replaceAll("\\{" + "scenario" + "\\}",escape(scenario.toString)).replaceAll("\\{" + "field" + "\\}",escape(field.toString))

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
      resp          <- client.expect[RootCdashigScenarioField](req)

    } yield resp
  }

}
