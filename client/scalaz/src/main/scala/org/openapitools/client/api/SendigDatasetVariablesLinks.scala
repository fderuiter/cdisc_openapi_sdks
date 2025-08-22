package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetVariablesLinks._

case class SendigDatasetVariablesLinks (
  self: Option[SendigDatasetVariablesRef],
modelDataset: Option[SdtmDatasetRef],
parentProduct: Option[SendigProductRef],
parentClass: Option[SendigClassRef],
priorVersion: Option[SendigDatasetVariablesRef],
datasetVariables: Option[List[SendigDatasetVariableRefElement]])

object SendigDatasetVariablesLinks {
  import DateTimeCodecs._

  implicit val SendigDatasetVariablesLinksCodecJson: CodecJson[SendigDatasetVariablesLinks] = CodecJson.derive[SendigDatasetVariablesLinks]
  implicit val SendigDatasetVariablesLinksDecoder: EntityDecoder[SendigDatasetVariablesLinks] = jsonOf[SendigDatasetVariablesLinks]
  implicit val SendigDatasetVariablesLinksEncoder: EntityEncoder[SendigDatasetVariablesLinks] = jsonEncoderOf[SendigDatasetVariablesLinks]
}
