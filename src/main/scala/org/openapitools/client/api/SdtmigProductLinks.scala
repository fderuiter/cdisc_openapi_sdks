package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigProductLinks._

case class SdtmigProductLinks (
  self: Option[SdtmigProductRef],
model: Option[SdtmProductRef],
priorVersion: Option[SdtmigProductRef])

object SdtmigProductLinks {
  import DateTimeCodecs._

  implicit val SdtmigProductLinksCodecJson: CodecJson[SdtmigProductLinks] = CodecJson.derive[SdtmigProductLinks]
  implicit val SdtmigProductLinksDecoder: EntityDecoder[SdtmigProductLinks] = jsonOf[SdtmigProductLinks]
  implicit val SdtmigProductLinksEncoder: EntityEncoder[SdtmigProductLinks] = jsonEncoderOf[SdtmigProductLinks]
}
