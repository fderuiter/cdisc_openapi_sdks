package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDataset._

case class SendigDataset (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
datasetStructure: Option[String],
links: Option[SendigDatasetLinks],
datasetVariables: Option[List[SendigDatasetVariable]])

object SendigDataset {
  import DateTimeCodecs._

  implicit val SendigDatasetCodecJson: CodecJson[SendigDataset] = CodecJson.derive[SendigDataset]
  implicit val SendigDatasetDecoder: EntityDecoder[SendigDataset] = jsonOf[SendigDataset]
  implicit val SendigDatasetEncoder: EntityEncoder[SendigDataset] = jsonEncoderOf[SendigDataset]
}
