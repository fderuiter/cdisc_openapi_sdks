package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportSdtmDatasetsTable._

case class ExportSdtmDatasetsTable (
  datasets: Option[List[ExportSdtmDatasetsRow]])

object ExportSdtmDatasetsTable {
  import DateTimeCodecs._

  implicit val ExportSdtmDatasetsTableCodecJson: CodecJson[ExportSdtmDatasetsTable] = CodecJson.derive[ExportSdtmDatasetsTable]
  implicit val ExportSdtmDatasetsTableDecoder: EntityDecoder[ExportSdtmDatasetsTable] = jsonOf[ExportSdtmDatasetsTable]
  implicit val ExportSdtmDatasetsTableEncoder: EntityEncoder[ExportSdtmDatasetsTable] = jsonEncoderOf[ExportSdtmDatasetsTable]
}
