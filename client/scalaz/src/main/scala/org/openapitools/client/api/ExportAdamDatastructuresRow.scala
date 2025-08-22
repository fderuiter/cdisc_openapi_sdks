package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportAdamDatastructuresRow._

case class ExportAdamDatastructuresRow (
  version: Option[String],
dataStructureName: Option[String],
datasetName: Option[String],
datasetLabel: Option[String],
datasetDescription: Option[String],
`class`: Option[String])

object ExportAdamDatastructuresRow {
  import DateTimeCodecs._

  implicit val ExportAdamDatastructuresRowCodecJson: CodecJson[ExportAdamDatastructuresRow] = CodecJson.derive[ExportAdamDatastructuresRow]
  implicit val ExportAdamDatastructuresRowDecoder: EntityDecoder[ExportAdamDatastructuresRow] = jsonOf[ExportAdamDatastructuresRow]
  implicit val ExportAdamDatastructuresRowEncoder: EntityEncoder[ExportAdamDatastructuresRow] = jsonEncoderOf[ExportAdamDatastructuresRow]
}
