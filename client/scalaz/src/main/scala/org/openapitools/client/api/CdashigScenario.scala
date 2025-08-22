package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenario._

case class CdashigScenario (
  ordinal: Option[String],
domain: Option[String],
scenario: Option[String],
links: Option[CdashigScenarioLinks],
fields: Option[List[CdashigScenarioField]])

object CdashigScenario {
  import DateTimeCodecs._

  implicit val CdashigScenarioCodecJson: CodecJson[CdashigScenario] = CodecJson.derive[CdashigScenario]
  implicit val CdashigScenarioDecoder: EntityDecoder[CdashigScenario] = jsonOf[CdashigScenario]
  implicit val CdashigScenarioEncoder: EntityEncoder[CdashigScenario] = jsonEncoderOf[CdashigScenario]
}
