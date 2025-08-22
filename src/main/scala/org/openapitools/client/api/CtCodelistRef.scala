package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtCodelistRef._

case class CtCodelistRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtCodelistRef {
  import DateTimeCodecs._

  implicit val CtCodelistRefCodecJson: CodecJson[CtCodelistRef] = CodecJson.derive[CtCodelistRef]
  implicit val CtCodelistRefDecoder: EntityDecoder[CtCodelistRef] = jsonOf[CtCodelistRef]
  implicit val CtCodelistRefEncoder: EntityEncoder[CtCodelistRef] = jsonEncoderOf[CtCodelistRef]
}
