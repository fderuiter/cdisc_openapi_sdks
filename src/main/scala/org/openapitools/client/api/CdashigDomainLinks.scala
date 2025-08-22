package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainLinks._

case class CdashigDomainLinks (
  self: Option[CdashigDomainRef],
parentProduct: Option[CdashigProductRef],
parentClass: Option[CdashigClassRef],
priorVersion: Option[CdashigDomainRef],
scenarios: Option[List[CdashigScenarioRefElement]])

object CdashigDomainLinks {
  import DateTimeCodecs._

  implicit val CdashigDomainLinksCodecJson: CodecJson[CdashigDomainLinks] = CodecJson.derive[CdashigDomainLinks]
  implicit val CdashigDomainLinksDecoder: EntityDecoder[CdashigDomainLinks] = jsonOf[CdashigDomainLinks]
  implicit val CdashigDomainLinksEncoder: EntityEncoder[CdashigDomainLinks] = jsonEncoderOf[CdashigDomainLinks]
}
