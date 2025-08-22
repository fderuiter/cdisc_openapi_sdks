package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassRefSubclass._

case class SendigClassRefSubclass (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigClassRefSubclass {
  import DateTimeCodecs._

  implicit val SendigClassRefSubclassCodecJson: CodecJson[SendigClassRefSubclass] = CodecJson.derive[SendigClassRefSubclass]
  implicit val SendigClassRefSubclassDecoder: EntityDecoder[SendigClassRefSubclass] = jsonOf[SendigClassRefSubclass]
  implicit val SendigClassRefSubclassEncoder: EntityEncoder[SendigClassRefSubclass] = jsonEncoderOf[SendigClassRefSubclass]
}
