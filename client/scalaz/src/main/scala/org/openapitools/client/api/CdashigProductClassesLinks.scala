package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductClassesLinks._

case class CdashigProductClassesLinks (
  self: Option[CdashigProductClassesRef],
parentProduct: Option[CdashigProductRef],
classes: Option[List[CdashigClassRefElement]])

object CdashigProductClassesLinks {
  import DateTimeCodecs._

  implicit val CdashigProductClassesLinksCodecJson: CodecJson[CdashigProductClassesLinks] = CodecJson.derive[CdashigProductClassesLinks]
  implicit val CdashigProductClassesLinksDecoder: EntityDecoder[CdashigProductClassesLinks] = jsonOf[CdashigProductClassesLinks]
  implicit val CdashigProductClassesLinksEncoder: EntityEncoder[CdashigProductClassesLinks] = jsonEncoderOf[CdashigProductClassesLinks]
}
