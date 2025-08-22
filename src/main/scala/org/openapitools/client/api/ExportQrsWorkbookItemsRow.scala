package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportQrsWorkbookItemsRow._

case class ExportQrsWorkbookItemsRow (
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

object ExportQrsWorkbookItemsRow {
  import DateTimeCodecs._

  implicit val ExportQrsWorkbookItemsRowCodecJson: CodecJson[ExportQrsWorkbookItemsRow] = CodecJson.derive[ExportQrsWorkbookItemsRow]
  implicit val ExportQrsWorkbookItemsRowDecoder: EntityDecoder[ExportQrsWorkbookItemsRow] = jsonOf[ExportQrsWorkbookItemsRow]
  implicit val ExportQrsWorkbookItemsRowEncoder: EntityEncoder[ExportQrsWorkbookItemsRow] = jsonEncoderOf[ExportQrsWorkbookItemsRow]
}
