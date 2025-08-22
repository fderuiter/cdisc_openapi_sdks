package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsResponses._

case class QrsResponses (
  ordinal: Option[String],
links: Option[QrsResponseLinks])

object QrsResponses {
  import DateTimeCodecs._

  implicit val QrsResponsesCodecJson: CodecJson[QrsResponses] = CodecJson.derive[QrsResponses]
  implicit val QrsResponsesDecoder: EntityDecoder[QrsResponses] = jsonOf[QrsResponses]
  implicit val QrsResponsesEncoder: EntityEncoder[QrsResponses] = jsonEncoderOf[QrsResponses]
}
