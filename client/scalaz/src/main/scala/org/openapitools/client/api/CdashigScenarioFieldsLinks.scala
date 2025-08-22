package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioFieldsLinks._

case class CdashigScenarioFieldsLinks (
  self: Option[CdashigScenarioFieldsRef],
parentProduct: Option[CdashigProductRef],
parentClass: Option[CdashigClassRef],
parentDomain: Option[CdashigDomainRef],
fields: Option[List[CdashigScenarioFieldRefElement]])

object CdashigScenarioFieldsLinks {
  import DateTimeCodecs._

  implicit val CdashigScenarioFieldsLinksCodecJson: CodecJson[CdashigScenarioFieldsLinks] = CodecJson.derive[CdashigScenarioFieldsLinks]
  implicit val CdashigScenarioFieldsLinksDecoder: EntityDecoder[CdashigScenarioFieldsLinks] = jsonOf[CdashigScenarioFieldsLinks]
  implicit val CdashigScenarioFieldsLinksEncoder: EntityEncoder[CdashigScenarioFieldsLinks] = jsonEncoderOf[CdashigScenarioFieldsLinks]
}
