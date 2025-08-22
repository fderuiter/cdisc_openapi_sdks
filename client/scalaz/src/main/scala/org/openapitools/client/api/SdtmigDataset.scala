package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDataset._

case class SdtmigDataset (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
datasetStructure: Option[String],
links: Option[SdtmigDatasetLinks],
datasetVariables: Option[List[SdtmigDatasetVariable]])

object SdtmigDataset {
  import DateTimeCodecs._

  implicit val SdtmigDatasetCodecJson: CodecJson[SdtmigDataset] = CodecJson.derive[SdtmigDataset]
  implicit val SdtmigDatasetDecoder: EntityDecoder[SdtmigDataset] = jsonOf[SdtmigDataset]
  implicit val SdtmigDatasetEncoder: EntityEncoder[SdtmigDataset] = jsonEncoderOf[SdtmigDataset]
}
