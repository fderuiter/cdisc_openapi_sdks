package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassLinks._

case class SdtmigClassLinks (
  self: Option[SdtmigClassRef],
modelClass: Option[SdtmClassRef],
parentProduct: Option[SdtmigProductRef],
parentClass: Option[SdtmigClassRef],
subclasses: Option[List[SdtmigClassRefSubclass]],
priorVersion: Option[SdtmigClassRef])

object SdtmigClassLinks {
  import DateTimeCodecs._

  implicit val SdtmigClassLinksCodecJson: CodecJson[SdtmigClassLinks] = CodecJson.derive[SdtmigClassLinks]
  implicit val SdtmigClassLinksDecoder: EntityDecoder[SdtmigClassLinks] = jsonOf[SdtmigClassLinks]
  implicit val SdtmigClassLinksEncoder: EntityEncoder[SdtmigClassLinks] = jsonEncoderOf[SdtmigClassLinks]
}
