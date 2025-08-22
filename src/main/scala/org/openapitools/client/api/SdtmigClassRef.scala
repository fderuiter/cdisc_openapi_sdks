package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassRef._

case class SdtmigClassRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigClassRef {
  import DateTimeCodecs._

  implicit val SdtmigClassRefCodecJson: CodecJson[SdtmigClassRef] = CodecJson.derive[SdtmigClassRef]
  implicit val SdtmigClassRefDecoder: EntityDecoder[SdtmigClassRef] = jsonOf[SdtmigClassRef]
  implicit val SdtmigClassRefEncoder: EntityEncoder[SdtmigClassRef] = jsonEncoderOf[SdtmigClassRef]
}
