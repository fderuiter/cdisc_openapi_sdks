package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportQrsGeneral._

case class ExportQrsGeneral (
  name: Option[String],
label: Option[String],
effectiveDate: Option[String],
description: Option[String],
`type`: Option[String],
categorysCodelistCCode: Option[String],
categorysTermCCode: Option[String])

object ExportQrsGeneral {
  import DateTimeCodecs._

  implicit val ExportQrsGeneralCodecJson: CodecJson[ExportQrsGeneral] = CodecJson.derive[ExportQrsGeneral]
  implicit val ExportQrsGeneralDecoder: EntityDecoder[ExportQrsGeneral] = jsonOf[ExportQrsGeneral]
  implicit val ExportQrsGeneralEncoder: EntityEncoder[ExportQrsGeneral] = jsonEncoderOf[ExportQrsGeneral]
}
