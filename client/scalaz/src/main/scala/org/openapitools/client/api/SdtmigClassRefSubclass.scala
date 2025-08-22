package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassRefSubclass._

case class SdtmigClassRefSubclass (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigClassRefSubclass {
  import DateTimeCodecs._

  implicit val SdtmigClassRefSubclassCodecJson: CodecJson[SdtmigClassRefSubclass] = CodecJson.derive[SdtmigClassRefSubclass]
  implicit val SdtmigClassRefSubclassDecoder: EntityDecoder[SdtmigClassRefSubclass] = jsonOf[SdtmigClassRefSubclass]
  implicit val SdtmigClassRefSubclassEncoder: EntityEncoder[SdtmigClassRefSubclass] = jsonEncoderOf[SdtmigClassRefSubclass]
}
