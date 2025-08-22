package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassRefSubclass._

case class SdtmClassRefSubclass (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassRefSubclass {
  import DateTimeCodecs._

  implicit val SdtmClassRefSubclassCodecJson: CodecJson[SdtmClassRefSubclass] = CodecJson.derive[SdtmClassRefSubclass]
  implicit val SdtmClassRefSubclassDecoder: EntityDecoder[SdtmClassRefSubclass] = jsonOf[SdtmClassRefSubclass]
  implicit val SdtmClassRefSubclassEncoder: EntityEncoder[SdtmClassRefSubclass] = jsonEncoderOf[SdtmClassRefSubclass]
}
