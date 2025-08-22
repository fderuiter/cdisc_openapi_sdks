package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassesLinks._

case class SendigClassesLinks (
  self: Option[SendigClassesRef],
priorVersion: Option[SendigClassesRef],
classes: Option[List[SendigClassRefElement]])

object SendigClassesLinks {
  import DateTimeCodecs._

  implicit val SendigClassesLinksCodecJson: CodecJson[SendigClassesLinks] = CodecJson.derive[SendigClassesLinks]
  implicit val SendigClassesLinksDecoder: EntityDecoder[SendigClassesLinks] = jsonOf[SendigClassesLinks]
  implicit val SendigClassesLinksEncoder: EntityEncoder[SendigClassesLinks] = jsonEncoderOf[SendigClassesLinks]
}
