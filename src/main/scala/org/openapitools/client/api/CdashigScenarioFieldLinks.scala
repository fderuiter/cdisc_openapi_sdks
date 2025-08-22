package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioFieldLinks._

case class CdashigScenarioFieldLinks (
  self: Option[CdashigScenarioFieldRef],
codelist: Option[List[RootCtCodelistRefElement]],
parentProduct: Option[CdashigProductRef],
parentDomain: Option[CdashigDomainRef],
parentScenario: Option[CdashigScenarioRef],
rootItem: Option[RootCdashigScenarioFieldRef],
priorVersion: Option[CdashigScenarioFieldRef],
sdtmigDatasetMappingTargets: Option[List[SdtmigDatasetVariableRefTarget]])

object CdashigScenarioFieldLinks {
  import DateTimeCodecs._

  implicit val CdashigScenarioFieldLinksCodecJson: CodecJson[CdashigScenarioFieldLinks] = CodecJson.derive[CdashigScenarioFieldLinks]
  implicit val CdashigScenarioFieldLinksDecoder: EntityDecoder[CdashigScenarioFieldLinks] = jsonOf[CdashigScenarioFieldLinks]
  implicit val CdashigScenarioFieldLinksEncoder: EntityEncoder[CdashigScenarioFieldLinks] = jsonEncoderOf[CdashigScenarioFieldLinks]
}
