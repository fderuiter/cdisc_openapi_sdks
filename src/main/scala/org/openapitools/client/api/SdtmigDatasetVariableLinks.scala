package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariableLinks._

case class SdtmigDatasetVariableLinks (
  self: Option[SdtmigDatasetVariableRef],
codelist: Option[List[RootCtCodelistRefElement]],
modelClassVariable: Option[SdtmClassVariableRef],
modelDatasetVariable: Option[SdtmDatasetVariableRef],
parentProduct: Option[SdtmigProductRef],
parentDataset: Option[SdtmigDatasetRef],
rootItem: Option[RootSdtmigDatasetVariableRef],
priorVersion: Option[SdtmigDatasetVariableRef])

object SdtmigDatasetVariableLinks {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariableLinksCodecJson: CodecJson[SdtmigDatasetVariableLinks] = CodecJson.derive[SdtmigDatasetVariableLinks]
  implicit val SdtmigDatasetVariableLinksDecoder: EntityDecoder[SdtmigDatasetVariableLinks] = jsonOf[SdtmigDatasetVariableLinks]
  implicit val SdtmigDatasetVariableLinksEncoder: EntityEncoder[SdtmigDatasetVariableLinks] = jsonEncoderOf[SdtmigDatasetVariableLinks]
}
