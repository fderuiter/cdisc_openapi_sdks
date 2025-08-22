package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetVariableLinks._

case class SendigDatasetVariableLinks (
  self: Option[SendigDatasetVariableRef],
codelist: Option[List[RootCtCodelistRefElement]],
modelClassVariable: Option[SdtmClassVariableRef],
modelDatasetVariable: Option[SdtmDatasetVariableRef],
parentProduct: Option[SendigProductRef],
parentDataset: Option[SendigDatasetRef],
rootItem: Option[RootSendigDatasetVariableRef],
priorVersion: Option[SendigDatasetVariableRef])

object SendigDatasetVariableLinks {
  import DateTimeCodecs._

  implicit val SendigDatasetVariableLinksCodecJson: CodecJson[SendigDatasetVariableLinks] = CodecJson.derive[SendigDatasetVariableLinks]
  implicit val SendigDatasetVariableLinksDecoder: EntityDecoder[SendigDatasetVariableLinks] = jsonOf[SendigDatasetVariableLinks]
  implicit val SendigDatasetVariableLinksEncoder: EntityEncoder[SendigDatasetVariableLinks] = jsonEncoderOf[SendigDatasetVariableLinks]
}
