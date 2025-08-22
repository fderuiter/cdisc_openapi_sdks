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
import org.openapitools.client.api.ExportSendigDatasetsTable
import org.openapitools.client.api.ExportSendigVariablesTable
import org.openapitools.client.api.ExportSendigWorkbook
import org.openapitools.client.api.RootSendigDatasetVariable
import org.openapitools.client.api.SendigClass
import org.openapitools.client.api.SendigClassDatasets
import org.openapitools.client.api.SendigClasses
import org.openapitools.client.api.SendigDataset
import org.openapitools.client.api.SendigDatasetVariable
import org.openapitools.client.api.SendigDatasetVariables
import org.openapitools.client.api.SendigDatasets
import org.openapitools.client.api.SendigProduct
import org.openapitools.client.api.XmlRootSendigDatasetVariable
import org.openapitools.client.api.XmlSendigClass
import org.openapitools.client.api.XmlSendigClassDatasets
import org.openapitools.client.api.XmlSendigClasses
import org.openapitools.client.api.XmlSendigDataset
import org.openapitools.client.api.XmlSendigDatasetVariable
import org.openapitools.client.api.XmlSendigDatasetVariables
import org.openapitools.client.api.XmlSendigDatasets
import org.openapitools.client.api.XmlSendigProduct

object SENDImplementationGuideSENDIGApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrRootSendigDatasetsDatasetVariablesVarGet(host: String, dataset: String, `var`: String): Task[RootSendigDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[RootSendigDatasetVariable] = jsonOf[RootSendigDatasetVariable]

    val path = "/mdr/root/sendig/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[RootSendigDatasetVariable](req)

    } yield resp
  }

  def mdrSendigVersionClassesClassDatasetsGet(host: String, version: String, `class`: String): Task[SendigClassDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigClassDatasets] = jsonOf[SendigClassDatasets]

    val path = "/mdr/sendig/{version}/classes/{class}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SendigClassDatasets](req)

    } yield resp
  }

  def mdrSendigVersionClassesClassGet(host: String, version: String, `class`: String): Task[SendigClass] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigClass] = jsonOf[SendigClass]

    val path = "/mdr/sendig/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SendigClass](req)

    } yield resp
  }

  def mdrSendigVersionClassesGet(host: String, version: String): Task[SendigClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigClasses] = jsonOf[SendigClasses]

    val path = "/mdr/sendig/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SendigClasses](req)

    } yield resp
  }

  def mdrSendigVersionDatasetsDatasetGet(host: String, version: String, dataset: String): Task[SendigDataset] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigDataset] = jsonOf[SendigDataset]

    val path = "/mdr/sendig/{version}/datasets/{dataset}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SendigDataset](req)

    } yield resp
  }

  def mdrSendigVersionDatasetsDatasetVariablesGet(host: String, version: String, dataset: String): Task[SendigDatasetVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigDatasetVariables] = jsonOf[SendigDatasetVariables]

    val path = "/mdr/sendig/{version}/datasets/{dataset}/variables".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SendigDatasetVariables](req)

    } yield resp
  }

  def mdrSendigVersionDatasetsDatasetVariablesVarGet(host: String, version: String, dataset: String, `var`: String): Task[SendigDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigDatasetVariable] = jsonOf[SendigDatasetVariable]

    val path = "/mdr/sendig/{version}/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[SendigDatasetVariable](req)

    } yield resp
  }

  def mdrSendigVersionDatasetsGet(host: String, version: String): Task[SendigDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigDatasets] = jsonOf[SendigDatasets]

    val path = "/mdr/sendig/{version}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SendigDatasets](req)

    } yield resp
  }

  def mdrSendigVersionGet(host: String, version: String): Task[SendigProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigProduct] = jsonOf[SendigProduct]

    val path = "/mdr/sendig/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SendigProduct](req)

    } yield resp
  }

}

class HttpServiceSENDImplementationGuideSENDIGApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrRootSendigDatasetsDatasetVariablesVarGet(dataset: String, `var`: String): Task[RootSendigDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[RootSendigDatasetVariable] = jsonOf[RootSendigDatasetVariable]

    val path = "/mdr/root/sendig/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[RootSendigDatasetVariable](req)

    } yield resp
  }

  def mdrSendigVersionClassesClassDatasetsGet(version: String, `class`: String): Task[SendigClassDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigClassDatasets] = jsonOf[SendigClassDatasets]

    val path = "/mdr/sendig/{version}/classes/{class}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SendigClassDatasets](req)

    } yield resp
  }

  def mdrSendigVersionClassesClassGet(version: String, `class`: String): Task[SendigClass] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigClass] = jsonOf[SendigClass]

    val path = "/mdr/sendig/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SendigClass](req)

    } yield resp
  }

  def mdrSendigVersionClassesGet(version: String): Task[SendigClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigClasses] = jsonOf[SendigClasses]

    val path = "/mdr/sendig/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SendigClasses](req)

    } yield resp
  }

  def mdrSendigVersionDatasetsDatasetGet(version: String, dataset: String): Task[SendigDataset] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigDataset] = jsonOf[SendigDataset]

    val path = "/mdr/sendig/{version}/datasets/{dataset}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SendigDataset](req)

    } yield resp
  }

  def mdrSendigVersionDatasetsDatasetVariablesGet(version: String, dataset: String): Task[SendigDatasetVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigDatasetVariables] = jsonOf[SendigDatasetVariables]

    val path = "/mdr/sendig/{version}/datasets/{dataset}/variables".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SendigDatasetVariables](req)

    } yield resp
  }

  def mdrSendigVersionDatasetsDatasetVariablesVarGet(version: String, dataset: String, `var`: String): Task[SendigDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigDatasetVariable] = jsonOf[SendigDatasetVariable]

    val path = "/mdr/sendig/{version}/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[SendigDatasetVariable](req)

    } yield resp
  }

  def mdrSendigVersionDatasetsGet(version: String): Task[SendigDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigDatasets] = jsonOf[SendigDatasets]

    val path = "/mdr/sendig/{version}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SendigDatasets](req)

    } yield resp
  }

  def mdrSendigVersionGet(version: String): Task[SendigProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[SendigProduct] = jsonOf[SendigProduct]

    val path = "/mdr/sendig/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SendigProduct](req)

    } yield resp
  }

}
