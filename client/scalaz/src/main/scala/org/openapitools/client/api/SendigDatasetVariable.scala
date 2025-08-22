package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetVariable._

case class SendigDatasetVariable (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
role: Option[String],
simpleDatatype: Option[String],
core: Option[String],
describedValueDomain: Option[String],
valueList: Option[List[String]],
links: Option[SendigDatasetVariableLinks])

object SendigDatasetVariable {
  import DateTimeCodecs._

  implicit val SendigDatasetVariableCodecJson: CodecJson[SendigDatasetVariable] = CodecJson.derive[SendigDatasetVariable]
  implicit val SendigDatasetVariableDecoder: EntityDecoder[SendigDatasetVariable] = jsonOf[SendigDatasetVariable]
  implicit val SendigDatasetVariableEncoder: EntityEncoder[SendigDatasetVariable] = jsonEncoderOf[SendigDatasetVariable]
}
