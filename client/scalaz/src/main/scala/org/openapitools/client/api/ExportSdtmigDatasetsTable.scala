package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmigDatasetsTable._

case class ExportSdtmigDatasetsTable (
  datasets: Option[List[ExportSdtmigDatasetsRow]])

object ExportSdtmigDatasetsTable {
  import DateTimeCodecs._

  implicit val ExportSdtmigDatasetsTableCodecJson: CodecJson[ExportSdtmigDatasetsTable] = CodecJson.derive[ExportSdtmigDatasetsTable]
  implicit val ExportSdtmigDatasetsTableDecoder: EntityDecoder[ExportSdtmigDatasetsTable] = jsonOf[ExportSdtmigDatasetsTable]
  implicit val ExportSdtmigDatasetsTableEncoder: EntityEncoder[ExportSdtmigDatasetsTable] = jsonEncoderOf[ExportSdtmigDatasetsTable]
}
