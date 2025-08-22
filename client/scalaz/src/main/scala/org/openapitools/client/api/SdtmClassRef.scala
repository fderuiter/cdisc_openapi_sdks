package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassRef._

case class SdtmClassRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassRef {
  import DateTimeCodecs._

  implicit val SdtmClassRefCodecJson: CodecJson[SdtmClassRef] = CodecJson.derive[SdtmClassRef]
  implicit val SdtmClassRefDecoder: EntityDecoder[SdtmClassRef] = jsonOf[SdtmClassRef]
  implicit val SdtmClassRefEncoder: EntityEncoder[SdtmClassRef] = jsonEncoderOf[SdtmClassRef]
}
