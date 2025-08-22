package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassRefSubclass._

case class CdashigClassRefSubclass (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigClassRefSubclass {
  import DateTimeCodecs._

  implicit val CdashigClassRefSubclassCodecJson: CodecJson[CdashigClassRefSubclass] = CodecJson.derive[CdashigClassRefSubclass]
  implicit val CdashigClassRefSubclassDecoder: EntityDecoder[CdashigClassRefSubclass] = jsonOf[CdashigClassRefSubclass]
  implicit val CdashigClassRefSubclassEncoder: EntityEncoder[CdashigClassRefSubclass] = jsonEncoderOf[CdashigClassRefSubclass]
}
