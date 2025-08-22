package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamProductDatastructuresRef._

case class AdamProductDatastructuresRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamProductDatastructuresRef {
  import DateTimeCodecs._

  implicit val AdamProductDatastructuresRefCodecJson: CodecJson[AdamProductDatastructuresRef] = CodecJson.derive[AdamProductDatastructuresRef]
  implicit val AdamProductDatastructuresRefDecoder: EntityDecoder[AdamProductDatastructuresRef] = jsonOf[AdamProductDatastructuresRef]
  implicit val AdamProductDatastructuresRefEncoder: EntityEncoder[AdamProductDatastructuresRef] = jsonEncoderOf[AdamProductDatastructuresRef]
}
