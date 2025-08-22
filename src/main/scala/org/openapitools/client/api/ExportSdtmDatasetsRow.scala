package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmDatasetsRow._

case class ExportSdtmDatasetsRow (
  version: Option[String],
`class`: Option[String],
datasetName: Option[String],
datasetLabel: Option[String],
structure: Option[String])

object ExportSdtmDatasetsRow {
  import DateTimeCodecs._

  implicit val ExportSdtmDatasetsRowCodecJson: CodecJson[ExportSdtmDatasetsRow] = CodecJson.derive[ExportSdtmDatasetsRow]
  implicit val ExportSdtmDatasetsRowDecoder: EntityDecoder[ExportSdtmDatasetsRow] = jsonOf[ExportSdtmDatasetsRow]
  implicit val ExportSdtmDatasetsRowEncoder: EntityEncoder[ExportSdtmDatasetsRow] = jsonEncoderOf[ExportSdtmDatasetsRow]
}
