package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSendigDatasetsRow._

case class ExportSendigDatasetsRow (
  version: Option[String],
`class`: Option[String],
datasetName: Option[String],
datasetLabel: Option[String],
structure: Option[String])

object ExportSendigDatasetsRow {
  import DateTimeCodecs._

  implicit val ExportSendigDatasetsRowCodecJson: CodecJson[ExportSendigDatasetsRow] = CodecJson.derive[ExportSendigDatasetsRow]
  implicit val ExportSendigDatasetsRowDecoder: EntityDecoder[ExportSendigDatasetsRow] = jsonOf[ExportSendigDatasetsRow]
  implicit val ExportSendigDatasetsRowEncoder: EntityEncoder[ExportSendigDatasetsRow] = jsonEncoderOf[ExportSendigDatasetsRow]
}
