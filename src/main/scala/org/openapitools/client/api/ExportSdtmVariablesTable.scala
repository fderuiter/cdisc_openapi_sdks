package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmVariablesTable._

case class ExportSdtmVariablesTable (
  classVariables: Option[List[ExportSdtmClassVariablesRow]],
datasetVariables: Option[List[ExportSdtmDatasetVariablesRow]])

object ExportSdtmVariablesTable {
  import DateTimeCodecs._

  implicit val ExportSdtmVariablesTableCodecJson: CodecJson[ExportSdtmVariablesTable] = CodecJson.derive[ExportSdtmVariablesTable]
  implicit val ExportSdtmVariablesTableDecoder: EntityDecoder[ExportSdtmVariablesTable] = jsonOf[ExportSdtmVariablesTable]
  implicit val ExportSdtmVariablesTableEncoder: EntityEncoder[ExportSdtmVariablesTable] = jsonEncoderOf[ExportSdtmVariablesTable]
}
