package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSendigDatasetsTable._

case class ExportSendigDatasetsTable (
  datasets: Option[List[ExportSendigDatasetsRow]])

object ExportSendigDatasetsTable {
  import DateTimeCodecs._

  implicit val ExportSendigDatasetsTableCodecJson: CodecJson[ExportSendigDatasetsTable] = CodecJson.derive[ExportSendigDatasetsTable]
  implicit val ExportSendigDatasetsTableDecoder: EntityDecoder[ExportSendigDatasetsTable] = jsonOf[ExportSendigDatasetsTable]
  implicit val ExportSendigDatasetsTableEncoder: EntityEncoder[ExportSendigDatasetsTable] = jsonEncoderOf[ExportSendigDatasetsTable]
}
