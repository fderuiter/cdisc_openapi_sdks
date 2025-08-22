package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariableRefQualifies._

case class SdtmClassVariableRefQualifies (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassVariableRefQualifies {
  import DateTimeCodecs._

  implicit val SdtmClassVariableRefQualifiesCodecJson: CodecJson[SdtmClassVariableRefQualifies] = CodecJson.derive[SdtmClassVariableRefQualifies]
  implicit val SdtmClassVariableRefQualifiesDecoder: EntityDecoder[SdtmClassVariableRefQualifies] = jsonOf[SdtmClassVariableRefQualifies]
  implicit val SdtmClassVariableRefQualifiesEncoder: EntityEncoder[SdtmClassVariableRefQualifies] = jsonEncoderOf[SdtmClassVariableRefQualifies]
}
