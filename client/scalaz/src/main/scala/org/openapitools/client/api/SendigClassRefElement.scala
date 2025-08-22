package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassRefElement._

case class SendigClassRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigClassRefElement {
  import DateTimeCodecs._

  implicit val SendigClassRefElementCodecJson: CodecJson[SendigClassRefElement] = CodecJson.derive[SendigClassRefElement]
  implicit val SendigClassRefElementDecoder: EntityDecoder[SendigClassRefElement] = jsonOf[SendigClassRefElement]
  implicit val SendigClassRefElementEncoder: EntityEncoder[SendigClassRefElement] = jsonEncoderOf[SendigClassRefElement]
}
