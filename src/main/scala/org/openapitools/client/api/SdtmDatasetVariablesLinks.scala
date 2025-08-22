package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariablesLinks._

case class SdtmDatasetVariablesLinks (
  self: Option[SdtmDatasetVariablesRef],
parentProduct: Option[SdtmProductRef],
parentClass: Option[SdtmClassRef],
priorVersion: Option[SdtmDatasetVariablesRef],
datasetVariables: Option[List[SdtmDatasetVariableRefElement]])

object SdtmDatasetVariablesLinks {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariablesLinksCodecJson: CodecJson[SdtmDatasetVariablesLinks] = CodecJson.derive[SdtmDatasetVariablesLinks]
  implicit val SdtmDatasetVariablesLinksDecoder: EntityDecoder[SdtmDatasetVariablesLinks] = jsonOf[SdtmDatasetVariablesLinks]
  implicit val SdtmDatasetVariablesLinksEncoder: EntityEncoder[SdtmDatasetVariablesLinks] = jsonEncoderOf[SdtmDatasetVariablesLinks]
}
