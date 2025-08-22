package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariables._

case class SdtmClassVariables (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[SdtmClassVariablesLinks])

object SdtmClassVariables {
  import DateTimeCodecs._

  implicit val SdtmClassVariablesCodecJson: CodecJson[SdtmClassVariables] = CodecJson.derive[SdtmClassVariables]
  implicit val SdtmClassVariablesDecoder: EntityDecoder[SdtmClassVariables] = jsonOf[SdtmClassVariables]
  implicit val SdtmClassVariablesEncoder: EntityEncoder[SdtmClassVariables] = jsonEncoderOf[SdtmClassVariables]
}
