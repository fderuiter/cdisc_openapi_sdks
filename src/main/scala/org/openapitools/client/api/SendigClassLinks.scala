package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassLinks._

case class SendigClassLinks (
  self: Option[SendigClassRef],
modelClass: Option[SdtmClassRef],
parentProduct: Option[SendigProductRef],
parentClass: Option[SendigClassRef],
subclasses: Option[List[SendigClassRefSubclass]],
priorVersion: Option[SendigClassRef])

object SendigClassLinks {
  import DateTimeCodecs._

  implicit val SendigClassLinksCodecJson: CodecJson[SendigClassLinks] = CodecJson.derive[SendigClassLinks]
  implicit val SendigClassLinksDecoder: EntityDecoder[SendigClassLinks] = jsonOf[SendigClassLinks]
  implicit val SendigClassLinksEncoder: EntityEncoder[SendigClassLinks] = jsonEncoderOf[SendigClassLinks]
}
