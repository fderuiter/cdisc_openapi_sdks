package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportQrsCsvItemsRow._

case class ExportQrsCsvItemsRow (
  qRSMeasureName: Option[String],
qRSMeasureLabel: Option[String],
qRSMeasureType: Option[String],
itemSequence: Option[String],
testName: Option[String],
itemText: Option[String],
testsCodelistCCode: Option[String],
testsTermCCode: Option[String],
testCodesCodelistCCode: Option[String],
testCodesTermCCode: Option[String],
subcategorysCodelistCCode: Option[String],
subcategorysTermCCode: Option[String],
evaluatorsCodelistCCode: Option[String],
evaluatorsTermCCode: Option[String],
freeFormResponsesDatatype: Option[String],
responseGroup: Option[String])

object ExportQrsCsvItemsRow {
  import DateTimeCodecs._

  implicit val ExportQrsCsvItemsRowCodecJson: CodecJson[ExportQrsCsvItemsRow] = CodecJson.derive[ExportQrsCsvItemsRow]
  implicit val ExportQrsCsvItemsRowDecoder: EntityDecoder[ExportQrsCsvItemsRow] = jsonOf[ExportQrsCsvItemsRow]
  implicit val ExportQrsCsvItemsRowEncoder: EntityEncoder[ExportQrsCsvItemsRow] = jsonEncoderOf[ExportQrsCsvItemsRow]
}
