package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCtCodelistRef._

case class RootCtCodelistRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootCtCodelistRef {
  import DateTimeCodecs._

  implicit val RootCtCodelistRefCodecJson: CodecJson[RootCtCodelistRef] = CodecJson.derive[RootCtCodelistRef]
  implicit val RootCtCodelistRefDecoder: EntityDecoder[RootCtCodelistRef] = jsonOf[RootCtCodelistRef]
  implicit val RootCtCodelistRefEncoder: EntityEncoder[RootCtCodelistRef] = jsonEncoderOf[RootCtCodelistRef]
}
