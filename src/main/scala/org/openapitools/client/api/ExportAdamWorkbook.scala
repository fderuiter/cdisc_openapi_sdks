package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportAdamWorkbook._

case class ExportAdamWorkbook (
  variables: Option[List[ExportAdamVariablesRow]],
datastructures: Option[List[ExportAdamDatastructuresRow]])

object ExportAdamWorkbook {
  import DateTimeCodecs._

  implicit val ExportAdamWorkbookCodecJson: CodecJson[ExportAdamWorkbook] = CodecJson.derive[ExportAdamWorkbook]
  implicit val ExportAdamWorkbookDecoder: EntityDecoder[ExportAdamWorkbook] = jsonOf[ExportAdamWorkbook]
  implicit val ExportAdamWorkbookEncoder: EntityEncoder[ExportAdamWorkbook] = jsonEncoderOf[ExportAdamWorkbook]
}
