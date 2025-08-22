package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassLinks._

case class SdtmClassLinks (
  self: Option[SdtmClassRef],
parentProduct: Option[SdtmProductRef],
parentClass: Option[SdtmClassRef],
subclasses: Option[List[SdtmClassRefSubclass]],
priorVersion: Option[SdtmClassRef])

object SdtmClassLinks {
  import DateTimeCodecs._

  implicit val SdtmClassLinksCodecJson: CodecJson[SdtmClassLinks] = CodecJson.derive[SdtmClassLinks]
  implicit val SdtmClassLinksDecoder: EntityDecoder[SdtmClassLinks] = jsonOf[SdtmClassLinks]
  implicit val SdtmClassLinksEncoder: EntityEncoder[SdtmClassLinks] = jsonEncoderOf[SdtmClassLinks]
}
