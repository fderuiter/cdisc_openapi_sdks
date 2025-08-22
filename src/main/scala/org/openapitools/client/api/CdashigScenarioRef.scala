package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioRef._

case class CdashigScenarioRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigScenarioRef {
  import DateTimeCodecs._

  implicit val CdashigScenarioRefCodecJson: CodecJson[CdashigScenarioRef] = CodecJson.derive[CdashigScenarioRef]
  implicit val CdashigScenarioRefDecoder: EntityDecoder[CdashigScenarioRef] = jsonOf[CdashigScenarioRef]
  implicit val CdashigScenarioRefEncoder: EntityEncoder[CdashigScenarioRef] = jsonEncoderOf[CdashigScenarioRef]
}
