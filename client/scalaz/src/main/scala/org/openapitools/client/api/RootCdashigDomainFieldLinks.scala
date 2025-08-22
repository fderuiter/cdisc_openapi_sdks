package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashigDomainFieldLinks._

case class RootCdashigDomainFieldLinks (
  self: Option[RootCdashigDomainFieldRef],
versions: Option[List[CdashigDomainFieldRefVersion]])

object RootCdashigDomainFieldLinks {
  import DateTimeCodecs._

  implicit val RootCdashigDomainFieldLinksCodecJson: CodecJson[RootCdashigDomainFieldLinks] = CodecJson.derive[RootCdashigDomainFieldLinks]
  implicit val RootCdashigDomainFieldLinksDecoder: EntityDecoder[RootCdashigDomainFieldLinks] = jsonOf[RootCdashigDomainFieldLinks]
  implicit val RootCdashigDomainFieldLinksEncoder: EntityEncoder[RootCdashigDomainFieldLinks] = jsonEncoderOf[RootCdashigDomainFieldLinks]
}
