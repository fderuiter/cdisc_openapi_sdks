package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariableRef._

case class SdtmClassVariableRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassVariableRef {
  import DateTimeCodecs._

  implicit val SdtmClassVariableRefCodecJson: CodecJson[SdtmClassVariableRef] = CodecJson.derive[SdtmClassVariableRef]
  implicit val SdtmClassVariableRefDecoder: EntityDecoder[SdtmClassVariableRef] = jsonOf[SdtmClassVariableRef]
  implicit val SdtmClassVariableRefEncoder: EntityEncoder[SdtmClassVariableRef] = jsonEncoderOf[SdtmClassVariableRef]
}
