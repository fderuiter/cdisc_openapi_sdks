package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductRef._

case class CdashProductRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashProductRef {
  import DateTimeCodecs._

  implicit val CdashProductRefCodecJson: CodecJson[CdashProductRef] = CodecJson.derive[CdashProductRef]
  implicit val CdashProductRefDecoder: EntityDecoder[CdashProductRef] = jsonOf[CdashProductRef]
  implicit val CdashProductRefEncoder: EntityEncoder[CdashProductRef] = jsonEncoderOf[CdashProductRef]
}
