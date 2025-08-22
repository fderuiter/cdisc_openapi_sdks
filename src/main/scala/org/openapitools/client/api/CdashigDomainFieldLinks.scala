package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainFieldLinks._

case class CdashigDomainFieldLinks (
  self: Option[CdashigDomainFieldRef],
codelist: Option[List[RootCtCodelistRefElement]],
parentProduct: Option[CdashigProductRef],
parentDomain: Option[CdashigDomainRef],
rootItem: Option[RootCdashigDomainFieldRef],
priorVersion: Option[CdashigDomainFieldRef],
sdtmClassMappingTargets: Option[List[SdtmClassVariableRefTarget]],
sdtmigDatasetMappingTargets: Option[List[SdtmigDatasetVariableRefTarget]])

object CdashigDomainFieldLinks {
  import DateTimeCodecs._

  implicit val CdashigDomainFieldLinksCodecJson: CodecJson[CdashigDomainFieldLinks] = CodecJson.derive[CdashigDomainFieldLinks]
  implicit val CdashigDomainFieldLinksDecoder: EntityDecoder[CdashigDomainFieldLinks] = jsonOf[CdashigDomainFieldLinks]
  implicit val CdashigDomainFieldLinksEncoder: EntityEncoder[CdashigDomainFieldLinks] = jsonEncoderOf[CdashigDomainFieldLinks]
}
