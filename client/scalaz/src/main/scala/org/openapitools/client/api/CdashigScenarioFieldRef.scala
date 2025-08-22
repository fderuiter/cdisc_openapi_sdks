package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioFieldRef._

case class CdashigScenarioFieldRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigScenarioFieldRef {
  import DateTimeCodecs._

  implicit val CdashigScenarioFieldRefCodecJson: CodecJson[CdashigScenarioFieldRef] = CodecJson.derive[CdashigScenarioFieldRef]
  implicit val CdashigScenarioFieldRefDecoder: EntityDecoder[CdashigScenarioFieldRef] = jsonOf[CdashigScenarioFieldRef]
  implicit val CdashigScenarioFieldRefEncoder: EntityEncoder[CdashigScenarioFieldRef] = jsonEncoderOf[CdashigScenarioFieldRef]
}
