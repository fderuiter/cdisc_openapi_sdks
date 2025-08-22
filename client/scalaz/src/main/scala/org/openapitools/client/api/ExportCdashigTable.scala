package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportCdashigTable._

case class ExportCdashigTable (
  domainVariables: Option[List[ExportCdashigDomainVariablesRow]],
scenarioVariables: Option[List[ExportCdashigScenarioVariablesRow]])

object ExportCdashigTable {
  import DateTimeCodecs._

  implicit val ExportCdashigTableCodecJson: CodecJson[ExportCdashigTable] = CodecJson.derive[ExportCdashigTable]
  implicit val ExportCdashigTableDecoder: EntityDecoder[ExportCdashigTable] = jsonOf[ExportCdashigTable]
  implicit val ExportCdashigTableEncoder: EntityEncoder[ExportCdashigTable] = jsonEncoderOf[ExportCdashigTable]
}
