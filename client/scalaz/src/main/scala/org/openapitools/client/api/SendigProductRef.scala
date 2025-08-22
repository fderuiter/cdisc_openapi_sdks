package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigProductRef._

case class SendigProductRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigProductRef {
  import DateTimeCodecs._

  implicit val SendigProductRefCodecJson: CodecJson[SendigProductRef] = CodecJson.derive[SendigProductRef]
  implicit val SendigProductRefDecoder: EntityDecoder[SendigProductRef] = jsonOf[SendigProductRef]
  implicit val SendigProductRefEncoder: EntityEncoder[SendigProductRef] = jsonEncoderOf[SendigProductRef]
}
