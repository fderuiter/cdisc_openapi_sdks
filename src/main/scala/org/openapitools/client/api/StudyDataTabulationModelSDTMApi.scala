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
import org.openapitools.client.api.ExportSdtmDatasetsTable
import org.openapitools.client.api.ExportSdtmVariablesTable
import org.openapitools.client.api.ExportSdtmWorkbook
import org.openapitools.client.api.RootSdtmClassVariable
import org.openapitools.client.api.RootSdtmDatasetVariable
import org.openapitools.client.api.SdtmClass
import org.openapitools.client.api.SdtmClassDatasets
import org.openapitools.client.api.SdtmClassVariable
import org.openapitools.client.api.SdtmClassVariables
import org.openapitools.client.api.SdtmClasses
import org.openapitools.client.api.SdtmDataset
import org.openapitools.client.api.SdtmDatasetVariable
import org.openapitools.client.api.SdtmDatasetVariables
import org.openapitools.client.api.SdtmDatasets
import org.openapitools.client.api.SdtmProduct
import org.openapitools.client.api.XmlRootSdtmClassVariable
import org.openapitools.client.api.XmlRootSdtmDatasetVariable
import org.openapitools.client.api.XmlSdtmClass
import org.openapitools.client.api.XmlSdtmClassDatasets
import org.openapitools.client.api.XmlSdtmClassVariable
import org.openapitools.client.api.XmlSdtmClassVariables
import org.openapitools.client.api.XmlSdtmClasses
import org.openapitools.client.api.XmlSdtmDataset
import org.openapitools.client.api.XmlSdtmDatasetVariable
import org.openapitools.client.api.XmlSdtmDatasetVariables
import org.openapitools.client.api.XmlSdtmDatasets
import org.openapitools.client.api.XmlSdtmProduct

object StudyDataTabulationModelSDTMApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrRootSdtmClassesClassVariablesVarGet(host: String, `class`: String, `var`: String): Task[RootSdtmClassVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[RootSdtmClassVariable] = jsonOf[RootSdtmClassVariable]

    val path = "/mdr/root/sdtm/classes/{class}/variables/{var}".replaceAll("\\{" + "class" + "\\}",escape(`class`.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[RootSdtmClassVariable](req)

    } yield resp
  }

  def mdrRootSdtmDatasetsDatasetVariablesVarGet(host: String, dataset: String, `var`: String): Task[RootSdtmDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[RootSdtmDatasetVariable] = jsonOf[RootSdtmDatasetVariable]

    val path = "/mdr/root/sdtm/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[RootSdtmDatasetVariable](req)

    } yield resp
  }

  def mdrSdtmVersionClassesClassDatasetsGet(host: String, version: String, `class`: String): Task[SdtmClassDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClassDatasets] = jsonOf[SdtmClassDatasets]

    val path = "/mdr/sdtm/{version}/classes/{class}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmClassDatasets](req)

    } yield resp
  }

  def mdrSdtmVersionClassesClassGet(host: String, version: String, `class`: String): Task[SdtmClass] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClass] = jsonOf[SdtmClass]

    val path = "/mdr/sdtm/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmClass](req)

    } yield resp
  }

  def mdrSdtmVersionClassesClassVariablesGet(host: String, version: String, `class`: String): Task[SdtmClassVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClassVariables] = jsonOf[SdtmClassVariables]

    val path = "/mdr/sdtm/{version}/classes/{class}/variables".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmClassVariables](req)

    } yield resp
  }

  def mdrSdtmVersionClassesClassVariablesVarGet(host: String, version: String, `class`: String, `var`: String): Task[SdtmClassVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClassVariable] = jsonOf[SdtmClassVariable]

    val path = "/mdr/sdtm/{version}/classes/{class}/variables/{var}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[SdtmClassVariable](req)

    } yield resp
  }

  def mdrSdtmVersionClassesGet(host: String, version: String): Task[SdtmClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClasses] = jsonOf[SdtmClasses]

    val path = "/mdr/sdtm/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmClasses](req)

    } yield resp
  }

  def mdrSdtmVersionDatasetsDatasetGet(host: String, version: String, dataset: String): Task[SdtmDataset] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmDataset] = jsonOf[SdtmDataset]

    val path = "/mdr/sdtm/{version}/datasets/{dataset}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SdtmDataset](req)

    } yield resp
  }

  def mdrSdtmVersionDatasetsDatasetVariablesGet(host: String, version: String, dataset: String): Task[SdtmDatasetVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmDatasetVariables] = jsonOf[SdtmDatasetVariables]

    val path = "/mdr/sdtm/{version}/datasets/{dataset}/variables".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SdtmDatasetVariables](req)

    } yield resp
  }

  def mdrSdtmVersionDatasetsDatasetVariablesVarGet(host: String, version: String, dataset: String, `var`: String): Task[SdtmDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmDatasetVariable] = jsonOf[SdtmDatasetVariable]

    val path = "/mdr/sdtm/{version}/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[SdtmDatasetVariable](req)

    } yield resp
  }

  def mdrSdtmVersionDatasetsGet(host: String, version: String): Task[SdtmDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmDatasets] = jsonOf[SdtmDatasets]

    val path = "/mdr/sdtm/{version}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmDatasets](req)

    } yield resp
  }

  def mdrSdtmVersionGet(host: String, version: String): Task[SdtmProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmProduct] = jsonOf[SdtmProduct]

    val path = "/mdr/sdtm/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmProduct](req)

    } yield resp
  }

}

class HttpServiceStudyDataTabulationModelSDTMApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrRootSdtmClassesClassVariablesVarGet(`class`: String, `var`: String): Task[RootSdtmClassVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[RootSdtmClassVariable] = jsonOf[RootSdtmClassVariable]

    val path = "/mdr/root/sdtm/classes/{class}/variables/{var}".replaceAll("\\{" + "class" + "\\}",escape(`class`.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[RootSdtmClassVariable](req)

    } yield resp
  }

  def mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset: String, `var`: String): Task[RootSdtmDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[RootSdtmDatasetVariable] = jsonOf[RootSdtmDatasetVariable]

    val path = "/mdr/root/sdtm/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[RootSdtmDatasetVariable](req)

    } yield resp
  }

  def mdrSdtmVersionClassesClassDatasetsGet(version: String, `class`: String): Task[SdtmClassDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClassDatasets] = jsonOf[SdtmClassDatasets]

    val path = "/mdr/sdtm/{version}/classes/{class}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmClassDatasets](req)

    } yield resp
  }

  def mdrSdtmVersionClassesClassGet(version: String, `class`: String): Task[SdtmClass] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClass] = jsonOf[SdtmClass]

    val path = "/mdr/sdtm/{version}/classes/{class}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmClass](req)

    } yield resp
  }

  def mdrSdtmVersionClassesClassVariablesGet(version: String, `class`: String): Task[SdtmClassVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClassVariables] = jsonOf[SdtmClassVariables]

    val path = "/mdr/sdtm/{version}/classes/{class}/variables".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

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
      resp          <- client.expect[SdtmClassVariables](req)

    } yield resp
  }

  def mdrSdtmVersionClassesClassVariablesVarGet(version: String, `class`: String, `var`: String): Task[SdtmClassVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClassVariable] = jsonOf[SdtmClassVariable]

    val path = "/mdr/sdtm/{version}/classes/{class}/variables/{var}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "class" + "\\}",escape(`class`.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[SdtmClassVariable](req)

    } yield resp
  }

  def mdrSdtmVersionClassesGet(version: String): Task[SdtmClasses] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmClasses] = jsonOf[SdtmClasses]

    val path = "/mdr/sdtm/{version}/classes".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmClasses](req)

    } yield resp
  }

  def mdrSdtmVersionDatasetsDatasetGet(version: String, dataset: String): Task[SdtmDataset] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmDataset] = jsonOf[SdtmDataset]

    val path = "/mdr/sdtm/{version}/datasets/{dataset}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SdtmDataset](req)

    } yield resp
  }

  def mdrSdtmVersionDatasetsDatasetVariablesGet(version: String, dataset: String): Task[SdtmDatasetVariables] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmDatasetVariables] = jsonOf[SdtmDatasetVariables]

    val path = "/mdr/sdtm/{version}/datasets/{dataset}/variables".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString))

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
      resp          <- client.expect[SdtmDatasetVariables](req)

    } yield resp
  }

  def mdrSdtmVersionDatasetsDatasetVariablesVarGet(version: String, dataset: String, `var`: String): Task[SdtmDatasetVariable] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmDatasetVariable] = jsonOf[SdtmDatasetVariable]

    val path = "/mdr/sdtm/{version}/datasets/{dataset}/variables/{var}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "dataset" + "\\}",escape(dataset.toString)).replaceAll("\\{" + "var" + "\\}",escape(`var`.toString))

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
      resp          <- client.expect[SdtmDatasetVariable](req)

    } yield resp
  }

  def mdrSdtmVersionDatasetsGet(version: String): Task[SdtmDatasets] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmDatasets] = jsonOf[SdtmDatasets]

    val path = "/mdr/sdtm/{version}/datasets".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmDatasets](req)

    } yield resp
  }

  def mdrSdtmVersionGet(version: String): Task[SdtmProduct] = {
    implicit val returnTypeDecoder: EntityDecoder[SdtmProduct] = jsonOf[SdtmProduct]

    val path = "/mdr/sdtm/{version}".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[SdtmProduct](req)

    } yield resp
  }

}
