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

import org.openapitools.client.api.AdamDatastructure
import org.openapitools.client.api.AdamDatastructureVariables
import org.openapitools.client.api.AdamDatastructureVarsets
import org.openapitools.client.api.AdamProduct
import org.openapitools.client.api.AdamProductDatastructures
import org.openapitools.client.api.AdamVariable
import org.openapitools.client.api.AdamVarset
import org.openapitools.client.api.DefaultErrorResponse
import org.openapitools.client.api.ExportAdamDatastructuresTable
import org.openapitools.client.api.ExportAdamVariablesTable
import org.openapitools.client.api.ExportAdamWorkbook
import org.openapitools.client.api.XmlAdamDatastructure
import org.openapitools.client.api.XmlAdamDatastructureVariables
import org.openapitools.client.api.XmlAdamDatastructureVarsets
import org.openapitools.client.api.XmlAdamProduct
import org.openapitools.client.api.XmlAdamProductDatastructures
import org.openapitools.client.api.XmlAdamVariable
import org.openapitools.client.api.XmlAdamVarset

object AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrAdamProductDatastructuresGet(host: String, product: String): Task[AdamProductDatastructures] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamProductDatastructures] = jsonOf[AdamProductDatastructures]

    val path = "/mdr/adam/{product}/datastructures".replaceAll("\\{" + "product" + "\\}",escape(product.toString))

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
      resp          <- client.expect[AdamProductDatastructures](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureGet(host: String, product: String, structure: String): Task[AdamDatastructure] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamDatastructure] = jsonOf[AdamDatastructure]

    val path = "/mdr/adam/{product}/datastructures/{structure}".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString))

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
      resp          <- client.expect[AdamDatastructure](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureVariablesGet(host: String, product: String, structure: String): Task[AdamDatastructureVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamDatastructureVariables] = jsonOf[AdamDatastructureVariables]

    val path = "/mdr/adam/{product}/datastructures/{structure}/variables".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString))

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
      resp          <- client.expect[AdamDatastructureVariables](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureVariablesVarGet(host: String, product: String, structure: String, `var`: String): Task[AdamVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamVariable] = jsonOf[AdamVariable]

    val path = "/mdr/adam/{product}/datastructures/{structure}/variables/{var}".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[AdamVariable](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureVarsetsGet(host: String, product: String, structure: String): Task[AdamDatastructureVarsets] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamDatastructureVarsets] = jsonOf[AdamDatastructureVarsets]

    val path = "/mdr/adam/{product}/datastructures/{structure}/varsets".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString))

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
      resp          <- client.expect[AdamDatastructureVarsets](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureVarsetsVarsetGet(host: String, product: String, structure: String, varset: String): Task[AdamVarset] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamVarset] = jsonOf[AdamVarset]

    val path = "/mdr/adam/{product}/datastructures/{structure}/varsets/{varset}".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString)).replaceAll("\\{" + "varset" + "\\}",escape(varset.toString))

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
      resp          <- client.expect[AdamVarset](req)

    } yield resp
  }

  def mdrAdamProductGet(host: String, product: String): Task[AdamProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamProduct] = jsonOf[AdamProduct]

    val path = "/mdr/adam/{product}".replaceAll("\\{" + "product" + "\\}",escape(product.toString))

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
      resp          <- client.expect[AdamProduct](req)

    } yield resp
  }

}

class HttpServiceAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrAdamProductDatastructuresGet(product: String): Task[AdamProductDatastructures] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamProductDatastructures] = jsonOf[AdamProductDatastructures]

    val path = "/mdr/adam/{product}/datastructures".replaceAll("\\{" + "product" + "\\}",escape(product.toString))

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
      resp          <- client.expect[AdamProductDatastructures](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureGet(product: String, structure: String): Task[AdamDatastructure] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamDatastructure] = jsonOf[AdamDatastructure]

    val path = "/mdr/adam/{product}/datastructures/{structure}".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString))

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
      resp          <- client.expect[AdamDatastructure](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureVariablesGet(product: String, structure: String): Task[AdamDatastructureVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamDatastructureVariables] = jsonOf[AdamDatastructureVariables]

    val path = "/mdr/adam/{product}/datastructures/{structure}/variables".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString))

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
      resp          <- client.expect[AdamDatastructureVariables](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureVariablesVarGet(product: String, structure: String, `var`: String): Task[AdamVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamVariable] = jsonOf[AdamVariable]

    val path = "/mdr/adam/{product}/datastructures/{structure}/variables/{var}".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[AdamVariable](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureVarsetsGet(product: String, structure: String): Task[AdamDatastructureVarsets] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamDatastructureVarsets] = jsonOf[AdamDatastructureVarsets]

    val path = "/mdr/adam/{product}/datastructures/{structure}/varsets".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString))

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
      resp          <- client.expect[AdamDatastructureVarsets](req)

    } yield resp
  }

  def mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product: String, structure: String, varset: String): Task[AdamVarset] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamVarset] = jsonOf[AdamVarset]

    val path = "/mdr/adam/{product}/datastructures/{structure}/varsets/{varset}".replaceAll("\\{" + "product" + "\\}",escape(product.toString)).replaceAll("\\{" + "structure" + "\\}",escape(structure.toString)).replaceAll("\\{" + "varset" + "\\}",escape(varset.toString))

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
      resp          <- client.expect[AdamVarset](req)

    } yield resp
  }

  def mdrAdamProductGet(product: String): Task[AdamProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[AdamProduct] = jsonOf[AdamProduct]

    val path = "/mdr/adam/{product}".replaceAll("\\{" + "product" + "\\}",escape(product.toString))

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
      resp          <- client.expect[AdamProduct](req)

    } yield resp
  }

}
