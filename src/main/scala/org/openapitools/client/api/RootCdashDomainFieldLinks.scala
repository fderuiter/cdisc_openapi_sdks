package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashDomainFieldLinks._

case class RootCdashDomainFieldLinks (
  self: Option[RootCdashDomainFieldRef],
versions: Option[List[CdashDomainFieldRefVersion]])

object RootCdashDomainFieldLinks {
  import DateTimeCodecs._

  implicit val RootCdashDomainFieldLinksCodecJson: CodecJson[RootCdashDomainFieldLinks] = CodecJson.derive[RootCdashDomainFieldLinks]
  implicit val RootCdashDomainFieldLinksDecoder: EntityDecoder[RootCdashDomainFieldLinks] = jsonOf[RootCdashDomainFieldLinks]
  implicit val RootCdashDomainFieldLinksEncoder: EntityEncoder[RootCdashDomainFieldLinks] = jsonEncoderOf[RootCdashDomainFieldLinks]
}
