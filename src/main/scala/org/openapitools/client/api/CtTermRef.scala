package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtTermRef._

case class CtTermRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtTermRef {
  import DateTimeCodecs._

  implicit val CtTermRefCodecJson: CodecJson[CtTermRef] = CodecJson.derive[CtTermRef]
  implicit val CtTermRefDecoder: EntityDecoder[CtTermRef] = jsonOf[CtTermRef]
  implicit val CtTermRefEncoder: EntityEncoder[CtTermRef] = jsonEncoderOf[CtTermRef]
}
