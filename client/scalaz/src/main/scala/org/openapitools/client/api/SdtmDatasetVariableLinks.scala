package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariableLinks._

case class SdtmDatasetVariableLinks (
  self: Option[SdtmDatasetVariableRef],
parentProduct: Option[SdtmProductRef],
parentDataset: Option[SdtmDatasetRef],
rootItem: Option[RootSdtmDatasetVariableRef],
priorVersion: Option[SdtmDatasetVariableRef])

object SdtmDatasetVariableLinks {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariableLinksCodecJson: CodecJson[SdtmDatasetVariableLinks] = CodecJson.derive[SdtmDatasetVariableLinks]
  implicit val SdtmDatasetVariableLinksDecoder: EntityDecoder[SdtmDatasetVariableLinks] = jsonOf[SdtmDatasetVariableLinks]
  implicit val SdtmDatasetVariableLinksEncoder: EntityEncoder[SdtmDatasetVariableLinks] = jsonEncoderOf[SdtmDatasetVariableLinks]
}
