package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamDatastructureLinks._

case class AdamDatastructureLinks (
  self: Option[AdamDatastructureRef],
parentProduct: Option[AdamProductRef],
priorVersion: Option[AdamDatastructureRef])

object AdamDatastructureLinks {
  import DateTimeCodecs._

  implicit val AdamDatastructureLinksCodecJson: CodecJson[AdamDatastructureLinks] = CodecJson.derive[AdamDatastructureLinks]
  implicit val AdamDatastructureLinksDecoder: EntityDecoder[AdamDatastructureLinks] = jsonOf[AdamDatastructureLinks]
  implicit val AdamDatastructureLinksEncoder: EntityEncoder[AdamDatastructureLinks] = jsonEncoderOf[AdamDatastructureLinks]
}
