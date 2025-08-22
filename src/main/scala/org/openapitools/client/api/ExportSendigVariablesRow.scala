package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSendigVariablesRow._

case class ExportSendigVariablesRow (
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

object ExportSendigVariablesRow {
  import DateTimeCodecs._

  implicit val ExportSendigVariablesRowCodecJson: CodecJson[ExportSendigVariablesRow] = CodecJson.derive[ExportSendigVariablesRow]
  implicit val ExportSendigVariablesRowDecoder: EntityDecoder[ExportSendigVariablesRow] = jsonOf[ExportSendigVariablesRow]
  implicit val ExportSendigVariablesRowEncoder: EntityEncoder[ExportSendigVariablesRow] = jsonEncoderOf[ExportSendigVariablesRow]
}
