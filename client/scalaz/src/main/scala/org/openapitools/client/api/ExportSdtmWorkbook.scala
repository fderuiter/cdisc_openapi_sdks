package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmWorkbook._

case class ExportSdtmWorkbook (
  classVariables: Option[List[ExportSdtmClassVariablesRow]],
datasetVariables: Option[List[ExportSdtmDatasetVariablesRow]],
datasets: Option[List[ExportSdtmDatasetsRow]])

object ExportSdtmWorkbook {
  import DateTimeCodecs._

  implicit val ExportSdtmWorkbookCodecJson: CodecJson[ExportSdtmWorkbook] = CodecJson.derive[ExportSdtmWorkbook]
  implicit val ExportSdtmWorkbookDecoder: EntityDecoder[ExportSdtmWorkbook] = jsonOf[ExportSdtmWorkbook]
  implicit val ExportSdtmWorkbookEncoder: EntityEncoder[ExportSdtmWorkbook] = jsonEncoderOf[ExportSdtmWorkbook]
}
