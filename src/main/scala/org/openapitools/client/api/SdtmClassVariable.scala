package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariable._

case class SdtmClassVariable (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
role: Option[String],
roleDescription: Option[String],
simpleDatatype: Option[String],
describedValueDomain: Option[String],
links: Option[SdtmClassVariableLinks])

object SdtmClassVariable {
  import DateTimeCodecs._

  implicit val SdtmClassVariableCodecJson: CodecJson[SdtmClassVariable] = CodecJson.derive[SdtmClassVariable]
  implicit val SdtmClassVariableDecoder: EntityDecoder[SdtmClassVariable] = jsonOf[SdtmClassVariable]
  implicit val SdtmClassVariableEncoder: EntityEncoder[SdtmClassVariable] = jsonEncoderOf[SdtmClassVariable]
}
