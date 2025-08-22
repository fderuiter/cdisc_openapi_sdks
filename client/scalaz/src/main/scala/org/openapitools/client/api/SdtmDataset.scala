package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDataset._

case class SdtmDataset (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
datasetStructure: Option[String],
links: Option[SdtmDatasetLinks],
datasetVariables: Option[List[SdtmDatasetVariable]])

object SdtmDataset {
  import DateTimeCodecs._

  implicit val SdtmDatasetCodecJson: CodecJson[SdtmDataset] = CodecJson.derive[SdtmDataset]
  implicit val SdtmDatasetDecoder: EntityDecoder[SdtmDataset] = jsonOf[SdtmDataset]
  implicit val SdtmDatasetEncoder: EntityEncoder[SdtmDataset] = jsonEncoderOf[SdtmDataset]
}
