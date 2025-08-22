package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductClassesRef._

case class CdashProductClassesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashProductClassesRef {
  import DateTimeCodecs._

  implicit val CdashProductClassesRefCodecJson: CodecJson[CdashProductClassesRef] = CodecJson.derive[CdashProductClassesRef]
  implicit val CdashProductClassesRefDecoder: EntityDecoder[CdashProductClassesRef] = jsonOf[CdashProductClassesRef]
  implicit val CdashProductClassesRefEncoder: EntityEncoder[CdashProductClassesRef] = jsonEncoderOf[CdashProductClassesRef]
}
