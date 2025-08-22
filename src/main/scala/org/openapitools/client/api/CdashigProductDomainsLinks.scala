package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductDomainsLinks._

case class CdashigProductDomainsLinks (
  self: Option[CdashigProductDomainsRef],
parentProduct: Option[CdashigProductRef],
domains: Option[List[CdashigDomainRefElement]])

object CdashigProductDomainsLinks {
  import DateTimeCodecs._

  implicit val CdashigProductDomainsLinksCodecJson: CodecJson[CdashigProductDomainsLinks] = CodecJson.derive[CdashigProductDomainsLinks]
  implicit val CdashigProductDomainsLinksDecoder: EntityDecoder[CdashigProductDomainsLinks] = jsonOf[CdashigProductDomainsLinks]
  implicit val CdashigProductDomainsLinksEncoder: EntityEncoder[CdashigProductDomainsLinks] = jsonEncoderOf[CdashigProductDomainsLinks]
}
