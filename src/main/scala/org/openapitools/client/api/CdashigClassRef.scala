package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassRef._

case class CdashigClassRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigClassRef {
  import DateTimeCodecs._

  implicit val CdashigClassRefCodecJson: CodecJson[CdashigClassRef] = CodecJson.derive[CdashigClassRef]
  implicit val CdashigClassRefDecoder: EntityDecoder[CdashigClassRef] = jsonOf[CdashigClassRef]
  implicit val CdashigClassRefEncoder: EntityEncoder[CdashigClassRef] = jsonEncoderOf[CdashigClassRef]
}
