package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductClassesLinks._

case class CdashProductClassesLinks (
  self: Option[CdashProductClassesRef],
parentProduct: Option[CdashProductRef],
classes: Option[List[CdashClassRefElement]])

object CdashProductClassesLinks {
  import DateTimeCodecs._

  implicit val CdashProductClassesLinksCodecJson: CodecJson[CdashProductClassesLinks] = CodecJson.derive[CdashProductClassesLinks]
  implicit val CdashProductClassesLinksDecoder: EntityDecoder[CdashProductClassesLinks] = jsonOf[CdashProductClassesLinks]
  implicit val CdashProductClassesLinksEncoder: EntityEncoder[CdashProductClassesLinks] = jsonEncoderOf[CdashProductClassesLinks]
}
