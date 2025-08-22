package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariablesRef._

case class SdtmClassVariablesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassVariablesRef {
  import DateTimeCodecs._

  implicit val SdtmClassVariablesRefCodecJson: CodecJson[SdtmClassVariablesRef] = CodecJson.derive[SdtmClassVariablesRef]
  implicit val SdtmClassVariablesRefDecoder: EntityDecoder[SdtmClassVariablesRef] = jsonOf[SdtmClassVariablesRef]
  implicit val SdtmClassVariablesRefEncoder: EntityEncoder[SdtmClassVariablesRef] = jsonEncoderOf[SdtmClassVariablesRef]
}
