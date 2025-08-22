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

import org.openapitools.client.api.About
import org.openapitools.client.api.DefaultErrorResponse
import org.openapitools.client.api.Lastupdated
import org.openapitools.client.api.ProductgroupDataAnalysis
import org.openapitools.client.api.ProductgroupDataCollection
import org.openapitools.client.api.ProductgroupDataTabulation
import org.openapitools.client.api.ProductgroupQrs
import org.openapitools.client.api.ProductgroupTerminology
import org.openapitools.client.api.Products
import org.openapitools.client.api.XmlAbout
import org.openapitools.client.api.XmlLastupdated
import org.openapitools.client.api.XmlProductgroupDataAnalysis
import org.openapitools.client.api.XmlProductgroupDataCollection
import org.openapitools.client.api.XmlProductgroupDataTabulation
import org.openapitools.client.api.XmlProductgroupTerminology
import org.openapitools.client.api.XmlProducts

object DefaultApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrAboutGet(host: String): Task[About] = {
    implicit val returnTypeDecoder: EntityDecoder[About] = jsonOf[About]

    val path = "/mdr/about"

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
      resp          <- client.expect[About](req)

    } yield resp
  }

  def mdrLastupdatedGet(host: String): Task[Lastupdated] = {
    implicit val returnTypeDecoder: EntityDecoder[Lastupdated] = jsonOf[Lastupdated]

    val path = "/mdr/lastupdated"

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
      resp          <- client.expect[Lastupdated](req)

    } yield resp
  }

  def mdrProductsDataAnalysisGet(host: String): Task[ProductgroupDataAnalysis] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupDataAnalysis] = jsonOf[ProductgroupDataAnalysis]

    val path = "/mdr/products/DataAnalysis"

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
      resp          <- client.expect[ProductgroupDataAnalysis](req)

    } yield resp
  }

  def mdrProductsDataCollectionGet(host: String): Task[ProductgroupDataCollection] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupDataCollection] = jsonOf[ProductgroupDataCollection]

    val path = "/mdr/products/DataCollection"

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
      resp          <- client.expect[ProductgroupDataCollection](req)

    } yield resp
  }

  def mdrProductsDataTabulationGet(host: String): Task[ProductgroupDataTabulation] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupDataTabulation] = jsonOf[ProductgroupDataTabulation]

    val path = "/mdr/products/DataTabulation"

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
      resp          <- client.expect[ProductgroupDataTabulation](req)

    } yield resp
  }

  def mdrProductsGet(host: String): Task[Products] = {
    implicit val returnTypeDecoder: EntityDecoder[Products] = jsonOf[Products]

    val path = "/mdr/products"

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
      resp          <- client.expect[Products](req)

    } yield resp
  }

  def mdrProductsMeasuresGet(host: String): Task[ProductgroupQrs] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupQrs] = jsonOf[ProductgroupQrs]

    val path = "/mdr/products/Measures"

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
      resp          <- client.expect[ProductgroupQrs](req)

    } yield resp
  }

  def mdrProductsTerminologyGet(host: String): Task[ProductgroupTerminology] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupTerminology] = jsonOf[ProductgroupTerminology]

    val path = "/mdr/products/Terminology"

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
      resp          <- client.expect[ProductgroupTerminology](req)

    } yield resp
  }

}

class HttpServiceDefaultApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrAboutGet(): Task[About] = {
    implicit val returnTypeDecoder: EntityDecoder[About] = jsonOf[About]

    val path = "/mdr/about"

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
      resp          <- client.expect[About](req)

    } yield resp
  }

  def mdrLastupdatedGet(): Task[Lastupdated] = {
    implicit val returnTypeDecoder: EntityDecoder[Lastupdated] = jsonOf[Lastupdated]

    val path = "/mdr/lastupdated"

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
      resp          <- client.expect[Lastupdated](req)

    } yield resp
  }

  def mdrProductsDataAnalysisGet(): Task[ProductgroupDataAnalysis] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupDataAnalysis] = jsonOf[ProductgroupDataAnalysis]

    val path = "/mdr/products/DataAnalysis"

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
      resp          <- client.expect[ProductgroupDataAnalysis](req)

    } yield resp
  }

  def mdrProductsDataCollectionGet(): Task[ProductgroupDataCollection] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupDataCollection] = jsonOf[ProductgroupDataCollection]

    val path = "/mdr/products/DataCollection"

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
      resp          <- client.expect[ProductgroupDataCollection](req)

    } yield resp
  }

  def mdrProductsDataTabulationGet(): Task[ProductgroupDataTabulation] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupDataTabulation] = jsonOf[ProductgroupDataTabulation]

    val path = "/mdr/products/DataTabulation"

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
      resp          <- client.expect[ProductgroupDataTabulation](req)

    } yield resp
  }

  def mdrProductsGet(): Task[Products] = {
    implicit val returnTypeDecoder: EntityDecoder[Products] = jsonOf[Products]

    val path = "/mdr/products"

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
      resp          <- client.expect[Products](req)

    } yield resp
  }

  def mdrProductsMeasuresGet(): Task[ProductgroupQrs] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupQrs] = jsonOf[ProductgroupQrs]

    val path = "/mdr/products/Measures"

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
      resp          <- client.expect[ProductgroupQrs](req)

    } yield resp
  }

  def mdrProductsTerminologyGet(): Task[ProductgroupTerminology] = {
    implicit val returnTypeDecoder: EntityDecoder[ProductgroupTerminology] = jsonOf[ProductgroupTerminology]

    val path = "/mdr/products/Terminology"

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
      resp          <- client.expect[ProductgroupTerminology](req)

    } yield resp
  }

}
