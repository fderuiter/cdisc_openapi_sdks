package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariable._

case class SdtmDatasetVariable (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
role: Option[String],
roleDescription: Option[String],
simpleDatatype: Option[String],
describedValueDomain: Option[String],
links: Option[SdtmDatasetVariableLinks])

object SdtmDatasetVariable {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariableCodecJson: CodecJson[SdtmDatasetVariable] = CodecJson.derive[SdtmDatasetVariable]
  implicit val SdtmDatasetVariableDecoder: EntityDecoder[SdtmDatasetVariable] = jsonOf[SdtmDatasetVariable]
  implicit val SdtmDatasetVariableEncoder: EntityEncoder[SdtmDatasetVariable] = jsonEncoderOf[SdtmDatasetVariable]
}
