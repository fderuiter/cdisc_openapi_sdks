package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassLinks._

case class CdashigClassLinks (
  self: Option[CdashigClassRef],
modelClass: Option[CdashClassRef],
parentProduct: Option[CdashigProductRef],
parentClass: Option[CdashigClassRef],
subclasses: Option[List[CdashigClassRefSubclass]],
priorVersion: Option[CdashigClassRef])

object CdashigClassLinks {
  import DateTimeCodecs._

  implicit val CdashigClassLinksCodecJson: CodecJson[CdashigClassLinks] = CodecJson.derive[CdashigClassLinks]
  implicit val CdashigClassLinksDecoder: EntityDecoder[CdashigClassLinks] = jsonOf[CdashigClassLinks]
  implicit val CdashigClassLinksEncoder: EntityEncoder[CdashigClassLinks] = jsonEncoderOf[CdashigClassLinks]
}
