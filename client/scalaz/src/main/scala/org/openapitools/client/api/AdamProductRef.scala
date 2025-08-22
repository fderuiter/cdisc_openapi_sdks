package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamProductRef._

case class AdamProductRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamProductRef {
  import DateTimeCodecs._

  implicit val AdamProductRefCodecJson: CodecJson[AdamProductRef] = CodecJson.derive[AdamProductRef]
  implicit val AdamProductRefDecoder: EntityDecoder[AdamProductRef] = jsonOf[AdamProductRef]
  implicit val AdamProductRefEncoder: EntityEncoder[AdamProductRef] = jsonEncoderOf[AdamProductRef]
}
