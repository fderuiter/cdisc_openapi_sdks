package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassesRef._

case class SdtmigClassesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigClassesRef {
  import DateTimeCodecs._

  implicit val SdtmigClassesRefCodecJson: CodecJson[SdtmigClassesRef] = CodecJson.derive[SdtmigClassesRef]
  implicit val SdtmigClassesRefDecoder: EntityDecoder[SdtmigClassesRef] = jsonOf[SdtmigClassesRef]
  implicit val SdtmigClassesRefEncoder: EntityEncoder[SdtmigClassesRef] = jsonEncoderOf[SdtmigClassesRef]
}
