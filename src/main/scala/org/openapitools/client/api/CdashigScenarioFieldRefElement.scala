package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioFieldRefElement._

case class CdashigScenarioFieldRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigScenarioFieldRefElement {
  import DateTimeCodecs._

  implicit val CdashigScenarioFieldRefElementCodecJson: CodecJson[CdashigScenarioFieldRefElement] = CodecJson.derive[CdashigScenarioFieldRefElement]
  implicit val CdashigScenarioFieldRefElementDecoder: EntityDecoder[CdashigScenarioFieldRefElement] = jsonOf[CdashigScenarioFieldRefElement]
  implicit val CdashigScenarioFieldRefElementEncoder: EntityEncoder[CdashigScenarioFieldRefElement] = jsonEncoderOf[CdashigScenarioFieldRefElement]
}
