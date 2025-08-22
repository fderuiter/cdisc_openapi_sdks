package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariable._

case class SdtmigDatasetVariable (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
role: Option[String],
simpleDatatype: Option[String],
core: Option[String],
describedValueDomain: Option[String],
valueList: Option[List[String]],
links: Option[SdtmigDatasetVariableLinks])

object SdtmigDatasetVariable {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariableCodecJson: CodecJson[SdtmigDatasetVariable] = CodecJson.derive[SdtmigDatasetVariable]
  implicit val SdtmigDatasetVariableDecoder: EntityDecoder[SdtmigDatasetVariable] = jsonOf[SdtmigDatasetVariable]
  implicit val SdtmigDatasetVariableEncoder: EntityEncoder[SdtmigDatasetVariable] = jsonEncoderOf[SdtmigDatasetVariable]
}
