package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassRef._

case class CdashClassRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashClassRef {
  import DateTimeCodecs._

  implicit val CdashClassRefCodecJson: CodecJson[CdashClassRef] = CodecJson.derive[CdashClassRef]
  implicit val CdashClassRefDecoder: EntityDecoder[CdashClassRef] = jsonOf[CdashClassRef]
  implicit val CdashClassRefEncoder: EntityEncoder[CdashClassRef] = jsonEncoderOf[CdashClassRef]
}
