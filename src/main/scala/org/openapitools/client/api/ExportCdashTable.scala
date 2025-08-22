package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportCdashTable._

case class ExportCdashTable (
  classVariables: Option[List[ExportCdashClassVariablesRow]],
domainVariables: Option[List[ExportCdashDomainVariablesRow]])

object ExportCdashTable {
  import DateTimeCodecs._

  implicit val ExportCdashTableCodecJson: CodecJson[ExportCdashTable] = CodecJson.derive[ExportCdashTable]
  implicit val ExportCdashTableDecoder: EntityDecoder[ExportCdashTable] = jsonOf[ExportCdashTable]
  implicit val ExportCdashTableEncoder: EntityEncoder[ExportCdashTable] = jsonEncoderOf[ExportCdashTable]
}
