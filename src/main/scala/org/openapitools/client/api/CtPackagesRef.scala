package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackagesRef._

case class CtPackagesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtPackagesRef {
  import DateTimeCodecs._

  implicit val CtPackagesRefCodecJson: CodecJson[CtPackagesRef] = CodecJson.derive[CtPackagesRef]
  implicit val CtPackagesRefDecoder: EntityDecoder[CtPackagesRef] = jsonOf[CtPackagesRef]
  implicit val CtPackagesRefEncoder: EntityEncoder[CtPackagesRef] = jsonEncoderOf[CtPackagesRef]
}
