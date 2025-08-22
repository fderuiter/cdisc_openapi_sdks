package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmigVariablesRow._

case class ExportSdtmigVariablesRow (
  version: Option[String],
variableOrder: Option[String],
`class`: Option[String],
datasetName: Option[String],
variableName: Option[String],
variableLabel: Option[String],
`type`: Option[String],
controlledTermsCodelistOrFormat: Option[String],
role: Option[String],
cDISCNotes: Option[String],
core: Option[String])

object ExportSdtmigVariablesRow {
  import DateTimeCodecs._

  implicit val ExportSdtmigVariablesRowCodecJson: CodecJson[ExportSdtmigVariablesRow] = CodecJson.derive[ExportSdtmigVariablesRow]
  implicit val ExportSdtmigVariablesRowDecoder: EntityDecoder[ExportSdtmigVariablesRow] = jsonOf[ExportSdtmigVariablesRow]
  implicit val ExportSdtmigVariablesRowEncoder: EntityEncoder[ExportSdtmigVariablesRow] = jsonEncoderOf[ExportSdtmigVariablesRow]
}
