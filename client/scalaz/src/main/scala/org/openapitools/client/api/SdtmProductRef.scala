package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmProductRef._

case class SdtmProductRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmProductRef {
  import DateTimeCodecs._

  implicit val SdtmProductRefCodecJson: CodecJson[SdtmProductRef] = CodecJson.derive[SdtmProductRef]
  implicit val SdtmProductRefDecoder: EntityDecoder[SdtmProductRef] = jsonOf[SdtmProductRef]
  implicit val SdtmProductRefEncoder: EntityEncoder[SdtmProductRef] = jsonEncoderOf[SdtmProductRef]
}
