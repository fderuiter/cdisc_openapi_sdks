package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmProductLinks._

case class SdtmProductLinks (
  self: Option[SdtmProductRef],
priorVersion: Option[SdtmProductRef])

object SdtmProductLinks {
  import DateTimeCodecs._

  implicit val SdtmProductLinksCodecJson: CodecJson[SdtmProductLinks] = CodecJson.derive[SdtmProductLinks]
  implicit val SdtmProductLinksDecoder: EntityDecoder[SdtmProductLinks] = jsonOf[SdtmProductLinks]
  implicit val SdtmProductLinksEncoder: EntityEncoder[SdtmProductLinks] = jsonEncoderOf[SdtmProductLinks]
}
