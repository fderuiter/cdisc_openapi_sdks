package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassFieldLinks._

case class CdashClassFieldLinks (
  self: Option[CdashClassFieldRef],
codelist: Option[List[RootCtCodelistRefElement]],
parentProduct: Option[CdashProductRef],
parentClass: Option[CdashClassRef],
rootItem: Option[RootCdashClassFieldRef],
priorVersion: Option[CdashClassFieldRef],
sdtmClassMappingTargets: Option[List[SdtmClassVariableRefTarget]],
sdtmDatasetMappingTargets: Option[List[SdtmDatasetVariableRefTarget]])

object CdashClassFieldLinks {
  import DateTimeCodecs._

  implicit val CdashClassFieldLinksCodecJson: CodecJson[CdashClassFieldLinks] = CodecJson.derive[CdashClassFieldLinks]
  implicit val CdashClassFieldLinksDecoder: EntityDecoder[CdashClassFieldLinks] = jsonOf[CdashClassFieldLinks]
  implicit val CdashClassFieldLinksEncoder: EntityEncoder[CdashClassFieldLinks] = jsonEncoderOf[CdashClassFieldLinks]
}
