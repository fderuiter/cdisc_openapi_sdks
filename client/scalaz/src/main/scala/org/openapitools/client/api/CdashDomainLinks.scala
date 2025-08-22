package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainLinks._

case class CdashDomainLinks (
  self: Option[CdashDomainRef],
parentProduct: Option[CdashProductRef],
parentClass: Option[CdashClassRef],
priorVersion: Option[CdashDomainRef])

object CdashDomainLinks {
  import DateTimeCodecs._

  implicit val CdashDomainLinksCodecJson: CodecJson[CdashDomainLinks] = CodecJson.derive[CdashDomainLinks]
  implicit val CdashDomainLinksDecoder: EntityDecoder[CdashDomainLinks] = jsonOf[CdashDomainLinks]
  implicit val CdashDomainLinksEncoder: EntityEncoder[CdashDomainLinks] = jsonEncoderOf[CdashDomainLinks]
}
