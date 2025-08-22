package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportAdamDatastructuresTable._

case class ExportAdamDatastructuresTable (
  datastructures: Option[List[ExportAdamDatastructuresRow]])

object ExportAdamDatastructuresTable {
  import DateTimeCodecs._

  implicit val ExportAdamDatastructuresTableCodecJson: CodecJson[ExportAdamDatastructuresTable] = CodecJson.derive[ExportAdamDatastructuresTable]
  implicit val ExportAdamDatastructuresTableDecoder: EntityDecoder[ExportAdamDatastructuresTable] = jsonOf[ExportAdamDatastructuresTable]
  implicit val ExportAdamDatastructuresTableEncoder: EntityEncoder[ExportAdamDatastructuresTable] = jsonEncoderOf[ExportAdamDatastructuresTable]
}
