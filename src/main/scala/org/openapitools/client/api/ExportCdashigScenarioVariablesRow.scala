package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportCdashigScenarioVariablesRow._

case class ExportCdashigScenarioVariablesRow (
  version: Option[String],
`class`: Option[String],
domain: Option[String],
dataCollectionScenario: Option[String],
variableOrder: Option[String],
cDASHIGVariable: Option[String],
cDASHIGVariableLabel: Option[String],
dRAFTCDASHIGDefinition: Option[String],
questionText: Option[String],
prompt: Option[String],
`type`: Option[String],
cDASHIGCore: Option[String],
caseReportFormCompletionInstructions: Option[String],
sDTMIGTarget: Option[List[String]],
mappingInstructions: Option[String],
controlledTerminologyCodelistName: Option[String],
implementationNotes: Option[String])

object ExportCdashigScenarioVariablesRow {
  import DateTimeCodecs._

  implicit val ExportCdashigScenarioVariablesRowCodecJson: CodecJson[ExportCdashigScenarioVariablesRow] = CodecJson.derive[ExportCdashigScenarioVariablesRow]
  implicit val ExportCdashigScenarioVariablesRowDecoder: EntityDecoder[ExportCdashigScenarioVariablesRow] = jsonOf[ExportCdashigScenarioVariablesRow]
  implicit val ExportCdashigScenarioVariablesRowEncoder: EntityEncoder[ExportCdashigScenarioVariablesRow] = jsonEncoderOf[ExportCdashigScenarioVariablesRow]
}
