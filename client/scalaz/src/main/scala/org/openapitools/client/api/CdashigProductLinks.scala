package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductLinks._

case class CdashigProductLinks (
  self: Option[CdashigProductRef],
model: Option[CdashProductRef],
priorVersion: Option[CdashigProductRef])

object CdashigProductLinks {
  import DateTimeCodecs._

  implicit val CdashigProductLinksCodecJson: CodecJson[CdashigProductLinks] = CodecJson.derive[CdashigProductLinks]
  implicit val CdashigProductLinksDecoder: EntityDecoder[CdashigProductLinks] = jsonOf[CdashigProductLinks]
  implicit val CdashigProductLinksEncoder: EntityEncoder[CdashigProductLinks] = jsonEncoderOf[CdashigProductLinks]
}
