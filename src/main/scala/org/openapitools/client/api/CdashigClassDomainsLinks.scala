package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassDomainsLinks._

case class CdashigClassDomainsLinks (
  self: Option[CdashigClassDomainsRef],
domains: Option[List[CdashigDomainRefElement]])

object CdashigClassDomainsLinks {
  import DateTimeCodecs._

  implicit val CdashigClassDomainsLinksCodecJson: CodecJson[CdashigClassDomainsLinks] = CodecJson.derive[CdashigClassDomainsLinks]
  implicit val CdashigClassDomainsLinksDecoder: EntityDecoder[CdashigClassDomainsLinks] = jsonOf[CdashigClassDomainsLinks]
  implicit val CdashigClassDomainsLinksEncoder: EntityEncoder[CdashigClassDomainsLinks] = jsonEncoderOf[CdashigClassDomainsLinks]
}
