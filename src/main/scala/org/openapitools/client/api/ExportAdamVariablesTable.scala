package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportAdamVariablesTable._

case class ExportAdamVariablesTable (
  variables: Option[List[ExportAdamVariablesRow]])

object ExportAdamVariablesTable {
  import DateTimeCodecs._

  implicit val ExportAdamVariablesTableCodecJson: CodecJson[ExportAdamVariablesTable] = CodecJson.derive[ExportAdamVariablesTable]
  implicit val ExportAdamVariablesTableDecoder: EntityDecoder[ExportAdamVariablesTable] = jsonOf[ExportAdamVariablesTable]
  implicit val ExportAdamVariablesTableEncoder: EntityEncoder[ExportAdamVariablesTable] = jsonEncoderOf[ExportAdamVariablesTable]
}
