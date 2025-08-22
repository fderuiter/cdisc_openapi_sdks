package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioLinks._

case class CdashigScenarioLinks (
  self: Option[CdashigScenarioRef],
parentProduct: Option[CdashigProductRef],
parentClass: Option[CdashigClassRef],
parentDomain: Option[CdashigDomainRef],
priorVersion: Option[CdashigScenarioRef])

object CdashigScenarioLinks {
  import DateTimeCodecs._

  implicit val CdashigScenarioLinksCodecJson: CodecJson[CdashigScenarioLinks] = CodecJson.derive[CdashigScenarioLinks]
  implicit val CdashigScenarioLinksDecoder: EntityDecoder[CdashigScenarioLinks] = jsonOf[CdashigScenarioLinks]
  implicit val CdashigScenarioLinksEncoder: EntityEncoder[CdashigScenarioLinks] = jsonEncoderOf[CdashigScenarioLinks]
}
