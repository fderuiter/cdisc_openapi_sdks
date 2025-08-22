package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportQrsWorkbook._

case class ExportQrsWorkbook (
  self: Option[ExportQrsGeneral],
items: Option[List[ExportQrsWorkbookItemsRow]],
responses: Option[List[ExportQrsResponses]])

object ExportQrsWorkbook {
  import DateTimeCodecs._

  implicit val ExportQrsWorkbookCodecJson: CodecJson[ExportQrsWorkbook] = CodecJson.derive[ExportQrsWorkbook]
  implicit val ExportQrsWorkbookDecoder: EntityDecoder[ExportQrsWorkbook] = jsonOf[ExportQrsWorkbook]
  implicit val ExportQrsWorkbookEncoder: EntityEncoder[ExportQrsWorkbook] = jsonEncoderOf[ExportQrsWorkbook]
}
