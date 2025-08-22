package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigProductRefElement._

case class SendigProductRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigProductRefElement {
  import DateTimeCodecs._

  implicit val SendigProductRefElementCodecJson: CodecJson[SendigProductRefElement] = CodecJson.derive[SendigProductRefElement]
  implicit val SendigProductRefElementDecoder: EntityDecoder[SendigProductRefElement] = jsonOf[SendigProductRefElement]
  implicit val SendigProductRefElementEncoder: EntityEncoder[SendigProductRefElement] = jsonEncoderOf[SendigProductRefElement]
}
