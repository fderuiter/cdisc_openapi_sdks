package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigProductLinks._

case class SendigProductLinks (
  self: Option[SendigProductRef],
model: Option[SdtmProductRef],
priorVersion: Option[SendigProductRef])

object SendigProductLinks {
  import DateTimeCodecs._

  implicit val SendigProductLinksCodecJson: CodecJson[SendigProductLinks] = CodecJson.derive[SendigProductLinks]
  implicit val SendigProductLinksDecoder: EntityDecoder[SendigProductLinks] = jsonOf[SendigProductLinks]
  implicit val SendigProductLinksEncoder: EntityEncoder[SendigProductLinks] = jsonEncoderOf[SendigProductLinks]
}
