package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassesRef._

case class SdtmClassesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassesRef {
  import DateTimeCodecs._

  implicit val SdtmClassesRefCodecJson: CodecJson[SdtmClassesRef] = CodecJson.derive[SdtmClassesRef]
  implicit val SdtmClassesRefDecoder: EntityDecoder[SdtmClassesRef] = jsonOf[SdtmClassesRef]
  implicit val SdtmClassesRefEncoder: EntityEncoder[SdtmClassesRef] = jsonEncoderOf[SdtmClassesRef]
}
