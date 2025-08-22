package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassLinks._

case class CdashClassLinks (
  self: Option[CdashClassRef],
parentProduct: Option[CdashProductRef],
priorVersion: Option[CdashClassRef])

object CdashClassLinks {
  import DateTimeCodecs._

  implicit val CdashClassLinksCodecJson: CodecJson[CdashClassLinks] = CodecJson.derive[CdashClassLinks]
  implicit val CdashClassLinksDecoder: EntityDecoder[CdashClassLinks] = jsonOf[CdashClassLinks]
  implicit val CdashClassLinksEncoder: EntityEncoder[CdashClassLinks] = jsonEncoderOf[CdashClassLinks]
}
