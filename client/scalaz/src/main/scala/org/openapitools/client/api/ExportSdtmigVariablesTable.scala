package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmigVariablesTable._

case class ExportSdtmigVariablesTable (
  variables: Option[List[ExportSdtmigVariablesRow]])

object ExportSdtmigVariablesTable {
  import DateTimeCodecs._

  implicit val ExportSdtmigVariablesTableCodecJson: CodecJson[ExportSdtmigVariablesTable] = CodecJson.derive[ExportSdtmigVariablesTable]
  implicit val ExportSdtmigVariablesTableDecoder: EntityDecoder[ExportSdtmigVariablesTable] = jsonOf[ExportSdtmigVariablesTable]
  implicit val ExportSdtmigVariablesTableEncoder: EntityEncoder[ExportSdtmigVariablesTable] = jsonEncoderOf[ExportSdtmigVariablesTable]
}
