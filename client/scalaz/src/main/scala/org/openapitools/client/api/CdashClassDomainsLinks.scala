package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassDomainsLinks._

case class CdashClassDomainsLinks (
  self: Option[CdashClassDomainsRef],
domains: Option[List[CdashDomainRefElement]])

object CdashClassDomainsLinks {
  import DateTimeCodecs._

  implicit val CdashClassDomainsLinksCodecJson: CodecJson[CdashClassDomainsLinks] = CodecJson.derive[CdashClassDomainsLinks]
  implicit val CdashClassDomainsLinksDecoder: EntityDecoder[CdashClassDomainsLinks] = jsonOf[CdashClassDomainsLinks]
  implicit val CdashClassDomainsLinksEncoder: EntityEncoder[CdashClassDomainsLinks] = jsonEncoderOf[CdashClassDomainsLinks]
}
