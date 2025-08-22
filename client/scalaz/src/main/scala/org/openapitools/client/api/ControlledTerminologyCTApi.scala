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

import org.openapitools.client.api.CtCodelist
import org.openapitools.client.api.CtCodelistTerms
import org.openapitools.client.api.CtPackage
import org.openapitools.client.api.CtPackageCodelists
import org.openapitools.client.api.CtPackages
import org.openapitools.client.api.CtTerm
import org.openapitools.client.api.DefaultErrorResponse
import org.openapitools.client.api.ExportCtTable
import org.openapitools.client.api.RootCtCodelist
import org.openapitools.client.api.RootCtTerm
import org.openapitools.client.api.XmlCtCodelist
import org.openapitools.client.api.XmlCtCodelistTerms
import org.openapitools.client.api.XmlCtPackage
import org.openapitools.client.api.XmlCtPackageCodelists
import org.openapitools.client.api.XmlCtPackages
import org.openapitools.client.api.XmlCtTerm
import org.openapitools.client.api.XmlRootCtCodelist
import org.openapitools.client.api.XmlRootCtTerm

object ControlledTerminologyCTApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrCtPackagesGet(host: String): Task[CtPackages] = {
    implicit val returnTypeDecoder: EntityDecoder[CtPackages] = jsonOf[CtPackages]

    val path = "/mdr/ct/packages"

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
      resp          <- client.expect[CtPackages](req)

    } yield resp
  }

  def mdrCtPackagesPackageCodelistsCodelistGet(host: String, `package`: String, codelist: String): Task[CtCodelist] = {
    implicit val returnTypeDecoder: EntityDecoder[CtCodelist] = jsonOf[CtCodelist]

    val path = "/mdr/ct/packages/{package}/codelists/{codelist}".replaceAll("\\{" + "package" + "\\}",escape(`package`.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString))

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
      resp          <- client.expect[CtCodelist](req)

    } yield resp
  }

  def mdrCtPackagesPackageCodelistsCodelistTermsGet(host: String, `package`: String, codelist: String): Task[CtCodelistTerms] = {
    implicit val returnTypeDecoder: EntityDecoder[CtCodelistTerms] = jsonOf[CtCodelistTerms]

    val path = "/mdr/ct/packages/{package}/codelists/{codelist}/terms".replaceAll("\\{" + "package" + "\\}",escape(`package`.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString))

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
      resp          <- client.expect[CtCodelistTerms](req)

    } yield resp
  }

  def mdrCtPackagesPackageCodelistsCodelistTermsTermGet(host: String, `package`: String, codelist: String, term: String): Task[CtTerm] = {
    implicit val returnTypeDecoder: EntityDecoder[CtTerm] = jsonOf[CtTerm]

    val path = "/mdr/ct/packages/{package}/codelists/{codelist}/terms/{term}".replaceAll("\\{" + "package" + "\\}",escape(`package`.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString)).replaceAll("\\{" + "term" + "\\}",escape(term.toString))

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
      resp          <- client.expect[CtTerm](req)

    } yield resp
  }

  def mdrCtPackagesPackageCodelistsGet(host: String, `package`: String): Task[CtPackageCodelists] = {
    implicit val returnTypeDecoder: EntityDecoder[CtPackageCodelists] = jsonOf[CtPackageCodelists]

    val path = "/mdr/ct/packages/{package}/codelists".replaceAll("\\{" + "package" + "\\}",escape(`package`.toString))

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
      resp          <- client.expect[CtPackageCodelists](req)

    } yield resp
  }

  def mdrCtPackagesProductGet(host: String, product: String): Task[CtPackage] = {
    implicit val returnTypeDecoder: EntityDecoder[CtPackage] = jsonOf[CtPackage]

    val path = "/mdr/ct/packages/{product}".replaceAll("\\{" + "product" + "\\}",escape(product.toString))

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
      resp          <- client.expect[CtPackage](req)

    } yield resp
  }

  def mdrRootCtProductGroupCodelistsCodelistGet(host: String, productGroup: String, codelist: String): Task[RootCtCodelist] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCtCodelist] = jsonOf[RootCtCodelist]

    val path = "/mdr/root/ct/{productGroup}/codelists/{codelist}".replaceAll("\\{" + "productGroup" + "\\}",escape(productGroup.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString))

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
      resp          <- client.expect[RootCtCodelist](req)

    } yield resp
  }

  def mdrRootCtProductGroupCodelistsCodelistTermsTermGet(host: String, productGroup: String, codelist: String, term: String): Task[RootCtTerm] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCtTerm] = jsonOf[RootCtTerm]

    val path = "/mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term}".replaceAll("\\{" + "productGroup" + "\\}",escape(productGroup.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString)).replaceAll("\\{" + "term" + "\\}",escape(term.toString))

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
      resp          <- client.expect[RootCtTerm](req)

    } yield resp
  }

}

class HttpServiceControlledTerminologyCTApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrCtPackagesGet(): Task[CtPackages] = {
    implicit val returnTypeDecoder: EntityDecoder[CtPackages] = jsonOf[CtPackages]

    val path = "/mdr/ct/packages"

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
      resp          <- client.expect[CtPackages](req)

    } yield resp
  }

  def mdrCtPackagesPackageCodelistsCodelistGet(`package`: String, codelist: String): Task[CtCodelist] = {
    implicit val returnTypeDecoder: EntityDecoder[CtCodelist] = jsonOf[CtCodelist]

    val path = "/mdr/ct/packages/{package}/codelists/{codelist}".replaceAll("\\{" + "package" + "\\}",escape(`package`.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString))

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
      resp          <- client.expect[CtCodelist](req)

    } yield resp
  }

  def mdrCtPackagesPackageCodelistsCodelistTermsGet(`package`: String, codelist: String): Task[CtCodelistTerms] = {
    implicit val returnTypeDecoder: EntityDecoder[CtCodelistTerms] = jsonOf[CtCodelistTerms]

    val path = "/mdr/ct/packages/{package}/codelists/{codelist}/terms".replaceAll("\\{" + "package" + "\\}",escape(`package`.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString))

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
      resp          <- client.expect[CtCodelistTerms](req)

    } yield resp
  }

  def mdrCtPackagesPackageCodelistsCodelistTermsTermGet(`package`: String, codelist: String, term: String): Task[CtTerm] = {
    implicit val returnTypeDecoder: EntityDecoder[CtTerm] = jsonOf[CtTerm]

    val path = "/mdr/ct/packages/{package}/codelists/{codelist}/terms/{term}".replaceAll("\\{" + "package" + "\\}",escape(`package`.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString)).replaceAll("\\{" + "term" + "\\}",escape(term.toString))

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
      resp          <- client.expect[CtTerm](req)

    } yield resp
  }

  def mdrCtPackagesPackageCodelistsGet(`package`: String): Task[CtPackageCodelists] = {
    implicit val returnTypeDecoder: EntityDecoder[CtPackageCodelists] = jsonOf[CtPackageCodelists]

    val path = "/mdr/ct/packages/{package}/codelists".replaceAll("\\{" + "package" + "\\}",escape(`package`.toString))

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
      resp          <- client.expect[CtPackageCodelists](req)

    } yield resp
  }

  def mdrCtPackagesProductGet(product: String): Task[CtPackage] = {
    implicit val returnTypeDecoder: EntityDecoder[CtPackage] = jsonOf[CtPackage]

    val path = "/mdr/ct/packages/{product}".replaceAll("\\{" + "product" + "\\}",escape(product.toString))

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
      resp          <- client.expect[CtPackage](req)

    } yield resp
  }

  def mdrRootCtProductGroupCodelistsCodelistGet(productGroup: String, codelist: String): Task[RootCtCodelist] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCtCodelist] = jsonOf[RootCtCodelist]

    val path = "/mdr/root/ct/{productGroup}/codelists/{codelist}".replaceAll("\\{" + "productGroup" + "\\}",escape(productGroup.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString))

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
      resp          <- client.expect[RootCtCodelist](req)

    } yield resp
  }

  def mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup: String, codelist: String, term: String): Task[RootCtTerm] = {
    implicit val returnTypeDecoder: EntityDecoder[RootCtTerm] = jsonOf[RootCtTerm]

    val path = "/mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term}".replaceAll("\\{" + "productGroup" + "\\}",escape(productGroup.toString)).replaceAll("\\{" + "codelist" + "\\}",escape(codelist.toString)).replaceAll("\\{" + "term" + "\\}",escape(term.toString))

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
      resp          <- client.expect[RootCtTerm](req)

    } yield resp
  }

}
