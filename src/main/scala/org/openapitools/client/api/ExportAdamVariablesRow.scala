package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportAdamVariablesRow._

case class ExportAdamVariablesRow (
  version: Option[String],
dataStructureName: Option[String],
datasetName: Option[String],
variableGroup: Option[String],
variableName: Option[String],
variableLabel: Option[String],
`type`: Option[String],
codelistControlledTerms: Option[String],
core: Option[String],
cDISCNotes: Option[String])

object ExportAdamVariablesRow {
  import DateTimeCodecs._

  implicit val ExportAdamVariablesRowCodecJson: CodecJson[ExportAdamVariablesRow] = CodecJson.derive[ExportAdamVariablesRow]
  implicit val ExportAdamVariablesRowDecoder: EntityDecoder[ExportAdamVariablesRow] = jsonOf[ExportAdamVariablesRow]
  implicit val ExportAdamVariablesRowEncoder: EntityEncoder[ExportAdamVariablesRow] = jsonEncoderOf[ExportAdamVariablesRow]
}
