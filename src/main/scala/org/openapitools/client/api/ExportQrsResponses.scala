package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportQrsResponses._

case class ExportQrsResponses (
  responseGroup: Option[String],
sequence: Option[String],
responsesOriginalResultCodelistCCode: Option[String],
responsesOriginalResultTermCCode: Option[String],
responsesOriginalResultUnitCodelistCCode: Option[String],
responsesOriginalResultUnitTermCCode: Option[String],
responsesStandardizedResultCodelistCCode: Option[String],
responsesStandardizedResultTermCCode: Option[String],
responsesStandardizedResultUnitCodelistCCode: Option[String],
responsesStandardizedResultUnitTermCCode: Option[String])

object ExportQrsResponses {
  import DateTimeCodecs._

  implicit val ExportQrsResponsesCodecJson: CodecJson[ExportQrsResponses] = CodecJson.derive[ExportQrsResponses]
  implicit val ExportQrsResponsesDecoder: EntityDecoder[ExportQrsResponses] = jsonOf[ExportQrsResponses]
  implicit val ExportQrsResponsesEncoder: EntityEncoder[ExportQrsResponses] = jsonEncoderOf[ExportQrsResponses]
}
