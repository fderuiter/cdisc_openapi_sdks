package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductDomainsLinks._

case class CdashProductDomainsLinks (
  self: Option[CdashProductDomainsRef],
parentProduct: Option[CdashProductRef],
domains: Option[List[CdashDomainRefElement]])

object CdashProductDomainsLinks {
  import DateTimeCodecs._

  implicit val CdashProductDomainsLinksCodecJson: CodecJson[CdashProductDomainsLinks] = CodecJson.derive[CdashProductDomainsLinks]
  implicit val CdashProductDomainsLinksDecoder: EntityDecoder[CdashProductDomainsLinks] = jsonOf[CdashProductDomainsLinks]
  implicit val CdashProductDomainsLinksEncoder: EntityEncoder[CdashProductDomainsLinks] = jsonEncoderOf[CdashProductDomainsLinks]
}
