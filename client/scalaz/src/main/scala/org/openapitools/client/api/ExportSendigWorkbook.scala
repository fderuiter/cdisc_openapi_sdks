package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSendigWorkbook._

case class ExportSendigWorkbook (
  variables: Option[List[ExportSendigVariablesRow]],
datasets: Option[List[ExportSendigDatasetsRow]])

object ExportSendigWorkbook {
  import DateTimeCodecs._

  implicit val ExportSendigWorkbookCodecJson: CodecJson[ExportSendigWorkbook] = CodecJson.derive[ExportSendigWorkbook]
  implicit val ExportSendigWorkbookDecoder: EntityDecoder[ExportSendigWorkbook] = jsonOf[ExportSendigWorkbook]
  implicit val ExportSendigWorkbookEncoder: EntityEncoder[ExportSendigWorkbook] = jsonEncoderOf[ExportSendigWorkbook]
}
