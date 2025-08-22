package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AboutRef._

case class AboutRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AboutRef {
  import DateTimeCodecs._

  implicit val AboutRefCodecJson: CodecJson[AboutRef] = CodecJson.derive[AboutRef]
  implicit val AboutRefDecoder: EntityDecoder[AboutRef] = jsonOf[AboutRef]
  implicit val AboutRefEncoder: EntityEncoder[AboutRef] = jsonEncoderOf[AboutRef]
}
