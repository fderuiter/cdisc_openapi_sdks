package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamProductLinks._

case class AdamProductLinks (
  self: Option[AdamProductRef],
model: Option[AdamProductRef],
priorVersion: Option[AdamProductRef])

object AdamProductLinks {
  import DateTimeCodecs._

  implicit val AdamProductLinksCodecJson: CodecJson[AdamProductLinks] = CodecJson.derive[AdamProductLinks]
  implicit val AdamProductLinksDecoder: EntityDecoder[AdamProductLinks] = jsonOf[AdamProductLinks]
  implicit val AdamProductLinksEncoder: EntityEncoder[AdamProductLinks] = jsonEncoderOf[AdamProductLinks]
}
