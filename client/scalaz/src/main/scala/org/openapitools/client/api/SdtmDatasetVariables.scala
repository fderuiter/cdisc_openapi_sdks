package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariables._

case class SdtmDatasetVariables (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
datasetStructure: Option[String],
links: Option[SdtmDatasetVariablesLinks])

object SdtmDatasetVariables {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariablesCodecJson: CodecJson[SdtmDatasetVariables] = CodecJson.derive[SdtmDatasetVariables]
  implicit val SdtmDatasetVariablesDecoder: EntityDecoder[SdtmDatasetVariables] = jsonOf[SdtmDatasetVariables]
  implicit val SdtmDatasetVariablesEncoder: EntityEncoder[SdtmDatasetVariables] = jsonEncoderOf[SdtmDatasetVariables]
}
