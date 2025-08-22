package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashClassFieldLinks._

case class RootCdashClassFieldLinks (
  self: Option[RootCdashClassFieldRef],
versions: Option[List[CdashClassFieldRefVersion]])

object RootCdashClassFieldLinks {
  import DateTimeCodecs._

  implicit val RootCdashClassFieldLinksCodecJson: CodecJson[RootCdashClassFieldLinks] = CodecJson.derive[RootCdashClassFieldLinks]
  implicit val RootCdashClassFieldLinksDecoder: EntityDecoder[RootCdashClassFieldLinks] = jsonOf[RootCdashClassFieldLinks]
  implicit val RootCdashClassFieldLinksEncoder: EntityEncoder[RootCdashClassFieldLinks] = jsonEncoderOf[RootCdashClassFieldLinks]
}
