package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassRef._

case class SendigClassRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigClassRef {
  import DateTimeCodecs._

  implicit val SendigClassRefCodecJson: CodecJson[SendigClassRef] = CodecJson.derive[SendigClassRef]
  implicit val SendigClassRefDecoder: EntityDecoder[SendigClassRef] = jsonOf[SendigClassRef]
  implicit val SendigClassRefEncoder: EntityEncoder[SendigClassRef] = jsonEncoderOf[SendigClassRef]
}
