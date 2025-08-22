package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCtTermRef._

case class RootCtTermRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootCtTermRef {
  import DateTimeCodecs._

  implicit val RootCtTermRefCodecJson: CodecJson[RootCtTermRef] = CodecJson.derive[RootCtTermRef]
  implicit val RootCtTermRefDecoder: EntityDecoder[RootCtTermRef] = jsonOf[RootCtTermRef]
  implicit val RootCtTermRefEncoder: EntityEncoder[RootCtTermRef] = jsonEncoderOf[RootCtTermRef]
}
