package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioRefElement._

case class CdashigScenarioRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigScenarioRefElement {
  import DateTimeCodecs._

  implicit val CdashigScenarioRefElementCodecJson: CodecJson[CdashigScenarioRefElement] = CodecJson.derive[CdashigScenarioRefElement]
  implicit val CdashigScenarioRefElementDecoder: EntityDecoder[CdashigScenarioRefElement] = jsonOf[CdashigScenarioRefElement]
  implicit val CdashigScenarioRefElementEncoder: EntityEncoder[CdashigScenarioRefElement] = jsonEncoderOf[CdashigScenarioRefElement]
}
