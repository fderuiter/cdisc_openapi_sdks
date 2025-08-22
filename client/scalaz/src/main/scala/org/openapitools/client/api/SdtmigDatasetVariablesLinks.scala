package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariablesLinks._

case class SdtmigDatasetVariablesLinks (
  self: Option[SdtmigDatasetVariablesRef],
modelDataset: Option[SdtmDatasetRef],
parentProduct: Option[SdtmigProductRef],
parentClass: Option[SdtmigClassRef],
priorVersion: Option[SdtmigDatasetVariablesRef],
datasetVariables: Option[List[SdtmigDatasetVariableRefElement]])

object SdtmigDatasetVariablesLinks {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariablesLinksCodecJson: CodecJson[SdtmigDatasetVariablesLinks] = CodecJson.derive[SdtmigDatasetVariablesLinks]
  implicit val SdtmigDatasetVariablesLinksDecoder: EntityDecoder[SdtmigDatasetVariablesLinks] = jsonOf[SdtmigDatasetVariablesLinks]
  implicit val SdtmigDatasetVariablesLinksEncoder: EntityEncoder[SdtmigDatasetVariablesLinks] = jsonEncoderOf[SdtmigDatasetVariablesLinks]
}
