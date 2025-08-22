package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassesRef._

case class SendigClassesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigClassesRef {
  import DateTimeCodecs._

  implicit val SendigClassesRefCodecJson: CodecJson[SendigClassesRef] = CodecJson.derive[SendigClassesRef]
  implicit val SendigClassesRefDecoder: EntityDecoder[SendigClassesRef] = jsonOf[SendigClassesRef]
  implicit val SendigClassesRefEncoder: EntityEncoder[SendigClassesRef] = jsonEncoderOf[SendigClassesRef]
}
