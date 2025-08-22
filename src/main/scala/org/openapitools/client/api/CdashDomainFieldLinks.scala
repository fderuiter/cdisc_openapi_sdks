package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainFieldLinks._

case class CdashDomainFieldLinks (
  self: Option[CdashDomainFieldRef],
codelist: Option[List[RootCtCodelistRefElement]],
parentProduct: Option[CdashProductRef],
parentClass: Option[CdashClassRef],
parentDomain: Option[CdashDomainRef],
rootItem: Option[RootCdashDomainFieldRef],
priorVersion: Option[CdashDomainFieldRef],
sdtmDatasetMappingTargets: Option[List[SdtmDatasetVariableRefTarget]],
sdtmigDatasetMappingTargets: Option[List[SdtmigDatasetVariableRefTarget]])

object CdashDomainFieldLinks {
  import DateTimeCodecs._

  implicit val CdashDomainFieldLinksCodecJson: CodecJson[CdashDomainFieldLinks] = CodecJson.derive[CdashDomainFieldLinks]
  implicit val CdashDomainFieldLinksDecoder: EntityDecoder[CdashDomainFieldLinks] = jsonOf[CdashDomainFieldLinks]
  implicit val CdashDomainFieldLinksEncoder: EntityEncoder[CdashDomainFieldLinks] = jsonEncoderOf[CdashDomainFieldLinks]
}
