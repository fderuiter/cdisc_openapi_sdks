package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportCdashClassVariablesRow._

case class ExportCdashClassVariablesRow (
  version: Option[String],
`class`: Option[String],
domain: Option[String],
variableOrder: Option[String],
cDASHVariable: Option[String],
cDASHVariableLabel: Option[String],
dRAFTCDASHDefinition: Option[String],
domainSpecific: Option[String],
questionText: Option[String],
prompt: Option[String],
`type`: Option[String],
sDTMTarget: Option[List[String]],
mappingInstructions: Option[String],
controlledTerminologyCodelistName: Option[String],
implementationNotes: Option[String])

object ExportCdashClassVariablesRow {
  import DateTimeCodecs._

  implicit val ExportCdashClassVariablesRowCodecJson: CodecJson[ExportCdashClassVariablesRow] = CodecJson.derive[ExportCdashClassVariablesRow]
  implicit val ExportCdashClassVariablesRowDecoder: EntityDecoder[ExportCdashClassVariablesRow] = jsonOf[ExportCdashClassVariablesRow]
  implicit val ExportCdashClassVariablesRowEncoder: EntityEncoder[ExportCdashClassVariablesRow] = jsonEncoderOf[ExportCdashClassVariablesRow]
}
