package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductLinks._

case class CdashProductLinks (
  self: Option[CdashProductRef],
priorVersion: Option[CdashProductRef])

object CdashProductLinks {
  import DateTimeCodecs._

  implicit val CdashProductLinksCodecJson: CodecJson[CdashProductLinks] = CodecJson.derive[CdashProductLinks]
  implicit val CdashProductLinksDecoder: EntityDecoder[CdashProductLinks] = jsonOf[CdashProductLinks]
  implicit val CdashProductLinksEncoder: EntityEncoder[CdashProductLinks] = jsonEncoderOf[CdashProductLinks]
}
