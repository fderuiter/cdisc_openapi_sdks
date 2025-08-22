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
import org.openapitools.client.api.ExportSdtmigDatasetsTable
import org.openapitools.client.api.ExportSdtmigVariablesTable
import org.openapitools.client.api.ExportSdtmigWorkbook
import org.openapitools.client.api.RootSdtmigDatasetVariable
import org.openapitools.client.api.SdtmigClass
import org.openapitools.client.api.SdtmigClassDatasets
import org.openapitools.client.api.SdtmigClasses
import org.openapitools.client.api.SdtmigDataset
import org.openapitools.client.api.SdtmigDatasetVariable
import org.openapitools.client.api.SdtmigDatasetVariables
import org.openapitools.client.api.SdtmigDatasets
import org.openapitools.client.api.SdtmigProduct
import org.openapitools.client.api.XmlRootSdtmigDatasetVariable
import org.openapitools.client.api.XmlSdtmigClass
import org.openapitools.client.api.XmlSdtmigClassDatasets
import org.openapitools.client.api.XmlSdtmigClasses
import org.openapitools.client.api.XmlSdtmigDataset
import org.openapitools.client.api.XmlSdtmigDatasetVariable
import org.openapitools.client.api.XmlSdtmigDatasetVariables
import org.openapitools.client.api.XmlSdtmigDatasets
import org.openapitools.client.api.XmlSdtmigProduct

object SDTMImplementationGuideSDTMIGApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrRootSdtmigDatasetsDatasetVariablesVarGet(host: String, dataset: String, `var`: String): Task[RootSdtmigDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[RootSdtmigDatasetVariable] = jsonOf[RootSdtmigDatasetVariable]

    val path = "/mdr/root/sdtmig/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[RootSdtmigDatasetVariable](req)

    } yield resp
  }

  def mdrSdtmigVersionClassesClassDatasetsGet(host: String, version: String, `class`: String): Task[SdtmigClassDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigClassDatasets] = jsonOf[SdtmigClassDatasets]

    val path = "/mdr/sdtmig/{version}/classes/{class}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmigClassDatasets](req)

    } yield resp
  }

  def mdrSdtmigVersionClassesClassGet(host: String, version: String, `class`: String): Task[SdtmigClass] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigClass] = jsonOf[SdtmigClass]

    val path = "/mdr/sdtmig/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmigClass](req)

    } yield resp
  }

  def mdrSdtmigVersionClassesGet(host: String, version: String): Task[SdtmigClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigClasses] = jsonOf[SdtmigClasses]

    val path = "/mdr/sdtmig/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmigClasses](req)

    } yield resp
  }

  def mdrSdtmigVersionDatasetsDatasetGet(host: String, version: String, dataset: String): Task[SdtmigDataset] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigDataset] = jsonOf[SdtmigDataset]

    val path = "/mdr/sdtmig/{version}/datasets/{dataset}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SdtmigDataset](req)

    } yield resp
  }

  def mdrSdtmigVersionDatasetsDatasetVariablesGet(host: String, version: String, dataset: String): Task[SdtmigDatasetVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigDatasetVariables] = jsonOf[SdtmigDatasetVariables]

    val path = "/mdr/sdtmig/{version}/datasets/{dataset}/variables".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SdtmigDatasetVariables](req)

    } yield resp
  }

  def mdrSdtmigVersionDatasetsDatasetVariablesVarGet(host: String, version: String, dataset: String, `var`: String): Task[SdtmigDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigDatasetVariable] = jsonOf[SdtmigDatasetVariable]

    val path = "/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[SdtmigDatasetVariable](req)

    } yield resp
  }

  def mdrSdtmigVersionDatasetsGet(host: String, version: String): Task[SdtmigDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigDatasets] = jsonOf[SdtmigDatasets]

    val path = "/mdr/sdtmig/{version}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmigDatasets](req)

    } yield resp
  }

  def mdrSdtmigVersionGet(host: String, version: String): Task[SdtmigProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigProduct] = jsonOf[SdtmigProduct]

    val path = "/mdr/sdtmig/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmigProduct](req)

    } yield resp
  }

}

class HttpServiceSDTMImplementationGuideSDTMIGApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset: String, `var`: String): Task[RootSdtmigDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[RootSdtmigDatasetVariable] = jsonOf[RootSdtmigDatasetVariable]

    val path = "/mdr/root/sdtmig/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[RootSdtmigDatasetVariable](req)

    } yield resp
  }

  def mdrSdtmigVersionClassesClassDatasetsGet(version: String, `class`: String): Task[SdtmigClassDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigClassDatasets] = jsonOf[SdtmigClassDatasets]

    val path = "/mdr/sdtmig/{version}/classes/{class}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmigClassDatasets](req)

    } yield resp
  }

  def mdrSdtmigVersionClassesClassGet(version: String, `class`: String): Task[SdtmigClass] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigClass] = jsonOf[SdtmigClass]

    val path = "/mdr/sdtmig/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmigClass](req)

    } yield resp
  }

  def mdrSdtmigVersionClassesGet(version: String): Task[SdtmigClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigClasses] = jsonOf[SdtmigClasses]

    val path = "/mdr/sdtmig/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmigClasses](req)

    } yield resp
  }

  def mdrSdtmigVersionDatasetsDatasetGet(version: String, dataset: String): Task[SdtmigDataset] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigDataset] = jsonOf[SdtmigDataset]

    val path = "/mdr/sdtmig/{version}/datasets/{dataset}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SdtmigDataset](req)

    } yield resp
  }

  def mdrSdtmigVersionDatasetsDatasetVariablesGet(version: String, dataset: String): Task[SdtmigDatasetVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigDatasetVariables] = jsonOf[SdtmigDatasetVariables]

    val path = "/mdr/sdtmig/{version}/datasets/{dataset}/variables".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SdtmigDatasetVariables](req)

    } yield resp
  }

  def mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version: String, dataset: String, `var`: String): Task[SdtmigDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigDatasetVariable] = jsonOf[SdtmigDatasetVariable]

    val path = "/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[SdtmigDatasetVariable](req)

    } yield resp
  }

  def mdrSdtmigVersionDatasetsGet(version: String): Task[SdtmigDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigDatasets] = jsonOf[SdtmigDatasets]

    val path = "/mdr/sdtmig/{version}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmigDatasets](req)

    } yield resp
  }

  def mdrSdtmigVersionGet(version: String): Task[SdtmigProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmigProduct] = jsonOf[SdtmigProduct]

    val path = "/mdr/sdtmig/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmigProduct](req)

    } yield resp
  }

}
