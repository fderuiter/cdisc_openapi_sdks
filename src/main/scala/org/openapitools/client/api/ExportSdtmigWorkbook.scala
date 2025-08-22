package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmigWorkbook._

case class ExportSdtmigWorkbook (
  variables: Option[List[ExportSdtmigVariablesRow]],
datasets: Option[List[ExportSdtmigDatasetsRow]])

object ExportSdtmigWorkbook {
  import DateTimeCodecs._

  implicit val ExportSdtmigWorkbookCodecJson: CodecJson[ExportSdtmigWorkbook] = CodecJson.derive[ExportSdtmigWorkbook]
  implicit val ExportSdtmigWorkbookDecoder: EntityDecoder[ExportSdtmigWorkbook] = jsonOf[ExportSdtmigWorkbook]
  implicit val ExportSdtmigWorkbookEncoder: EntityEncoder[ExportSdtmigWorkbook] = jsonEncoderOf[ExportSdtmigWorkbook]
}
