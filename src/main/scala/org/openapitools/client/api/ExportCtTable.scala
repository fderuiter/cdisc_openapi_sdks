package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportCtTable._

case class ExportCtTable (
  ct: Option[List[ExportCtCodelist]])

object ExportCtTable {
  import DateTimeCodecs._

  implicit val ExportCtTableCodecJson: CodecJson[ExportCtTable] = CodecJson.derive[ExportCtTable]
  implicit val ExportCtTableDecoder: EntityDecoder[ExportCtTable] = jsonOf[ExportCtTable]
  implicit val ExportCtTableEncoder: EntityEncoder[ExportCtTable] = jsonEncoderOf[ExportCtTable]
}
