package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamDatastructureRef._

case class AdamDatastructureRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamDatastructureRef {
  import DateTimeCodecs._

  implicit val AdamDatastructureRefCodecJson: CodecJson[AdamDatastructureRef] = CodecJson.derive[AdamDatastructureRef]
  implicit val AdamDatastructureRefDecoder: EntityDecoder[AdamDatastructureRef] = jsonOf[AdamDatastructureRef]
  implicit val AdamDatastructureRefEncoder: EntityEncoder[AdamDatastructureRef] = jsonEncoderOf[AdamDatastructureRef]
}
