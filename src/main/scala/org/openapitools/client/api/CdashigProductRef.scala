package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductRef._

case class CdashigProductRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigProductRef {
  import DateTimeCodecs._

  implicit val CdashigProductRefCodecJson: CodecJson[CdashigProductRef] = CodecJson.derive[CdashigProductRef]
  implicit val CdashigProductRefDecoder: EntityDecoder[CdashigProductRef] = jsonOf[CdashigProductRef]
  implicit val CdashigProductRefEncoder: EntityEncoder[CdashigProductRef] = jsonEncoderOf[CdashigProductRef]
}
