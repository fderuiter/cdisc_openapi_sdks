package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmigDatasetsRow._

case class ExportSdtmigDatasetsRow (
  version: Option[String],
`class`: Option[String],
datasetName: Option[String],
datasetLabel: Option[String],
structure: Option[String])

object ExportSdtmigDatasetsRow {
  import DateTimeCodecs._

  implicit val ExportSdtmigDatasetsRowCodecJson: CodecJson[ExportSdtmigDatasetsRow] = CodecJson.derive[ExportSdtmigDatasetsRow]
  implicit val ExportSdtmigDatasetsRowDecoder: EntityDecoder[ExportSdtmigDatasetsRow] = jsonOf[ExportSdtmigDatasetsRow]
  implicit val ExportSdtmigDatasetsRowEncoder: EntityEncoder[ExportSdtmigDatasetsRow] = jsonEncoderOf[ExportSdtmigDatasetsRow]
}
