package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariables._

case class SdtmigDatasetVariables (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
datasetStructure: Option[String],
links: Option[SdtmigDatasetVariablesLinks])

object SdtmigDatasetVariables {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariablesCodecJson: CodecJson[SdtmigDatasetVariables] = CodecJson.derive[SdtmigDatasetVariables]
  implicit val SdtmigDatasetVariablesDecoder: EntityDecoder[SdtmigDatasetVariables] = jsonOf[SdtmigDatasetVariables]
  implicit val SdtmigDatasetVariablesEncoder: EntityEncoder[SdtmigDatasetVariables] = jsonEncoderOf[SdtmigDatasetVariables]
}
