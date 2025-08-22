package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductClassesRef._

case class CdashigProductClassesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigProductClassesRef {
  import DateTimeCodecs._

  implicit val CdashigProductClassesRefCodecJson: CodecJson[CdashigProductClassesRef] = CodecJson.derive[CdashigProductClassesRef]
  implicit val CdashigProductClassesRefDecoder: EntityDecoder[CdashigProductClassesRef] = jsonOf[CdashigProductClassesRef]
  implicit val CdashigProductClassesRefEncoder: EntityEncoder[CdashigProductClassesRef] = jsonEncoderOf[CdashigProductClassesRef]
}
