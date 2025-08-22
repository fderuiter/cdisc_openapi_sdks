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

import org.openapitools.client.api.DefaultErrorResponse
import org.openapitools.client.api.ExportQrsItemsTable
import org.openapitools.client.api.ExportQrsWorkbook
import org.openapitools.client.api.QrsItem
import org.openapitools.client.api.QrsItems
import org.openapitools.client.api.QrsProduct
import org.openapitools.client.api.QrsResponsegroup
import org.openapitools.client.api.QrsResponsegroups
import org.openapitools.client.api.XmlQrsItem
import org.openapitools.client.api.XmlQrsItems
import org.openapitools.client.api.XmlQrsProduct
import org.openapitools.client.api.XmlQrsResponsegroup
import org.openapitools.client.api.XmlQrsResponsegroups

object MeasuresApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrQrsMeasureVersionGet(host: String, measure: String, version: String): Task[QrsProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsProduct] = jsonOf[QrsProduct]

    val path = "/mdr/qrs/{measure}/{version}".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[QrsProduct](req)

    } yield resp
  }

  def mdrQrsMeasureVersionItemsGet(host: String, measure: String, version: String): Task[QrsItems] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsItems] = jsonOf[QrsItems]

    val path = "/mdr/qrs/{measure}/{version}/items".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[QrsItems](req)

    } yield resp
  }

  def mdrQrsMeasureVersionItemsItemGet(host: String, measure: String, version: String, item: String): Task[QrsItem] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsItem] = jsonOf[QrsItem]

    val path = "/mdr/qrs/{measure}/{version}/items/{item}".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "item" + "\\}",escape(item.toString))

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
      resp          <- client.expect[QrsItem](req)

    } yield resp
  }

  def mdrQrsMeasureVersionResponsegroupsGet(host: String, measure: String, version: String): Task[QrsResponsegroups] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsResponsegroups] = jsonOf[QrsResponsegroups]

    val path = "/mdr/qrs/{measure}/{version}/responsegroups".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[QrsResponsegroups](req)

    } yield resp
  }

  def mdrQrsMeasureVersionResponsegroupsResponsegroupGet(host: String, measure: String, version: String, responsegroup: String): Task[QrsResponsegroup] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsResponsegroup] = jsonOf[QrsResponsegroup]

    val path = "/mdr/qrs/{measure}/{version}/responsegroups/{responsegroup}".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "responsegroup" + "\\}",escape(responsegroup.toString))

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
      resp          <- client.expect[QrsResponsegroup](req)

    } yield resp
  }

}

class HttpServiceMeasuresApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrQrsMeasureVersionGet(measure: String, version: String): Task[QrsProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsProduct] = jsonOf[QrsProduct]

    val path = "/mdr/qrs/{measure}/{version}".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[QrsProduct](req)

    } yield resp
  }

  def mdrQrsMeasureVersionItemsGet(measure: String, version: String): Task[QrsItems] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsItems] = jsonOf[QrsItems]

    val path = "/mdr/qrs/{measure}/{version}/items".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[QrsItems](req)

    } yield resp
  }

  def mdrQrsMeasureVersionItemsItemGet(measure: String, version: String, item: String): Task[QrsItem] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsItem] = jsonOf[QrsItem]

    val path = "/mdr/qrs/{measure}/{version}/items/{item}".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "item" + "\\}",escape(item.toString))

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
      resp          <- client.expect[QrsItem](req)

    } yield resp
  }

  def mdrQrsMeasureVersionResponsegroupsGet(measure: String, version: String): Task[QrsResponsegroups] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsResponsegroups] = jsonOf[QrsResponsegroups]

    val path = "/mdr/qrs/{measure}/{version}/responsegroups".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[QrsResponsegroups](req)

    } yield resp
  }

  def mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure: String, version: String, responsegroup: String): Task[QrsResponsegroup] = {
    implicit val returnTypeDecoder: EntityDecoder[QrsResponsegroup] = jsonOf[QrsResponsegroup]

    val path = "/mdr/qrs/{measure}/{version}/responsegroups/{responsegroup}".replaceAll("\\{" + "measure" + "\\}",escape(measure.toString)).replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "responsegroup" + "\\}",escape(responsegroup.toString))

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
      resp          <- client.expect[QrsResponsegroup](req)

    } yield resp
  }

}
