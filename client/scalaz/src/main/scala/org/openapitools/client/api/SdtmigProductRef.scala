package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigProductRef._

case class SdtmigProductRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigProductRef {
  import DateTimeCodecs._

  implicit val SdtmigProductRefCodecJson: CodecJson[SdtmigProductRef] = CodecJson.derive[SdtmigProductRef]
  implicit val SdtmigProductRefDecoder: EntityDecoder[SdtmigProductRef] = jsonOf[SdtmigProductRef]
  implicit val SdtmigProductRefEncoder: EntityEncoder[SdtmigProductRef] = jsonEncoderOf[SdtmigProductRef]
}
