package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetVariables._

case class SendigDatasetVariables (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
datasetStructure: Option[String],
links: Option[SendigDatasetVariablesLinks])

object SendigDatasetVariables {
  import DateTimeCodecs._

  implicit val SendigDatasetVariablesCodecJson: CodecJson[SendigDatasetVariables] = CodecJson.derive[SendigDatasetVariables]
  implicit val SendigDatasetVariablesDecoder: EntityDecoder[SendigDatasetVariables] = jsonOf[SendigDatasetVariables]
  implicit val SendigDatasetVariablesEncoder: EntityEncoder[SendigDatasetVariables] = jsonEncoderOf[SendigDatasetVariables]
}
