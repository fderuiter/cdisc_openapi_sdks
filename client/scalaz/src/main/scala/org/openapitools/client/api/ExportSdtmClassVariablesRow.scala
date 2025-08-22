package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmClassVariablesRow._

case class ExportSdtmClassVariablesRow (
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

object ExportSdtmClassVariablesRow {
  import DateTimeCodecs._

  implicit val ExportSdtmClassVariablesRowCodecJson: CodecJson[ExportSdtmClassVariablesRow] = CodecJson.derive[ExportSdtmClassVariablesRow]
  implicit val ExportSdtmClassVariablesRowDecoder: EntityDecoder[ExportSdtmClassVariablesRow] = jsonOf[ExportSdtmClassVariablesRow]
  implicit val ExportSdtmClassVariablesRowEncoder: EntityEncoder[ExportSdtmClassVariablesRow] = jsonEncoderOf[ExportSdtmClassVariablesRow]
}
