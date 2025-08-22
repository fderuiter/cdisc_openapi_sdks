package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSendigVariablesTable._

case class ExportSendigVariablesTable (
  variables: Option[List[ExportSendigVariablesRow]])

object ExportSendigVariablesTable {
  import DateTimeCodecs._

  implicit val ExportSendigVariablesTableCodecJson: CodecJson[ExportSendigVariablesTable] = CodecJson.derive[ExportSendigVariablesTable]
  implicit val ExportSendigVariablesTableDecoder: EntityDecoder[ExportSendigVariablesTable] = jsonOf[ExportSendigVariablesTable]
  implicit val ExportSendigVariablesTableEncoder: EntityEncoder[ExportSendigVariablesTable] = jsonEncoderOf[ExportSendigVariablesTable]
}
