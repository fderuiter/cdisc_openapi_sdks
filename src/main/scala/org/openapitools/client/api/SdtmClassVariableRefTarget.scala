package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariableRefTarget._

case class SdtmClassVariableRefTarget (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassVariableRefTarget {
  import DateTimeCodecs._

  implicit val SdtmClassVariableRefTargetCodecJson: CodecJson[SdtmClassVariableRefTarget] = CodecJson.derive[SdtmClassVariableRefTarget]
  implicit val SdtmClassVariableRefTargetDecoder: EntityDecoder[SdtmClassVariableRefTarget] = jsonOf[SdtmClassVariableRefTarget]
  implicit val SdtmClassVariableRefTargetEncoder: EntityEncoder[SdtmClassVariableRefTarget] = jsonEncoderOf[SdtmClassVariableRefTarget]
}
