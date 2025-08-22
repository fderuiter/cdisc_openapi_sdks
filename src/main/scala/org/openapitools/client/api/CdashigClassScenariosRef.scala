package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassScenariosRef._

case class CdashigClassScenariosRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigClassScenariosRef {
  import DateTimeCodecs._

  implicit val CdashigClassScenariosRefCodecJson: CodecJson[CdashigClassScenariosRef] = CodecJson.derive[CdashigClassScenariosRef]
  implicit val CdashigClassScenariosRefDecoder: EntityDecoder[CdashigClassScenariosRef] = jsonOf[CdashigClassScenariosRef]
  implicit val CdashigClassScenariosRefEncoder: EntityEncoder[CdashigClassScenariosRef] = jsonEncoderOf[CdashigClassScenariosRef]
}
