package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductScenariosRef._

case class CdashigProductScenariosRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigProductScenariosRef {
  import DateTimeCodecs._

  implicit val CdashigProductScenariosRefCodecJson: CodecJson[CdashigProductScenariosRef] = CodecJson.derive[CdashigProductScenariosRef]
  implicit val CdashigProductScenariosRefDecoder: EntityDecoder[CdashigProductScenariosRef] = jsonOf[CdashigProductScenariosRef]
  implicit val CdashigProductScenariosRefEncoder: EntityEncoder[CdashigProductScenariosRef] = jsonEncoderOf[CdashigProductScenariosRef]
}
