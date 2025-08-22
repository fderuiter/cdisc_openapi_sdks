package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamVariable._

case class AdamVariable (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
core: Option[String],
simpleDatatype: Option[String],
describedValueDomain: Option[String],
valueList: Option[List[String]],
links: Option[AdamVariableLinks])

object AdamVariable {
  import DateTimeCodecs._

  implicit val AdamVariableCodecJson: CodecJson[AdamVariable] = CodecJson.derive[AdamVariable]
  implicit val AdamVariableDecoder: EntityDecoder[AdamVariable] = jsonOf[AdamVariable]
  implicit val AdamVariableEncoder: EntityEncoder[AdamVariable] = jsonEncoderOf[AdamVariable]
}
