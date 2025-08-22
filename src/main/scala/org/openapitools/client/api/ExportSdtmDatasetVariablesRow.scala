package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmDatasetVariablesRow._

case class ExportSdtmDatasetVariablesRow (
  version: Option[String],
variableOrder: Option[String],
`class`: Option[String],
datasetName: Option[String],
variableName: Option[String],
variableLabel: Option[String],
`type`: Option[String],
controlledTermsCodelistOrFormat: Option[String],
role: Option[String],
roleDescription: Option[String],
description: Option[String])

object ExportSdtmDatasetVariablesRow {
  import DateTimeCodecs._

  implicit val ExportSdtmDatasetVariablesRowCodecJson: CodecJson[ExportSdtmDatasetVariablesRow] = CodecJson.derive[ExportSdtmDatasetVariablesRow]
  implicit val ExportSdtmDatasetVariablesRowDecoder: EntityDecoder[ExportSdtmDatasetVariablesRow] = jsonOf[ExportSdtmDatasetVariablesRow]
  implicit val ExportSdtmDatasetVariablesRowEncoder: EntityEncoder[ExportSdtmDatasetVariablesRow] = jsonEncoderOf[ExportSdtmDatasetVariablesRow]
}
