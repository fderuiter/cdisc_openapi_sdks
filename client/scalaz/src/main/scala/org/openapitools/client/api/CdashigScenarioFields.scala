package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioFields._

case class CdashigScenarioFields (
  ordinal: Option[String],
domain: Option[String],
scenario: Option[String],
links: Option[CdashigScenarioFieldsLinks])

object CdashigScenarioFields {
  import DateTimeCodecs._

  implicit val CdashigScenarioFieldsCodecJson: CodecJson[CdashigScenarioFields] = CodecJson.derive[CdashigScenarioFields]
  implicit val CdashigScenarioFieldsDecoder: EntityDecoder[CdashigScenarioFields] = jsonOf[CdashigScenarioFields]
  implicit val CdashigScenarioFieldsEncoder: EntityEncoder[CdashigScenarioFields] = jsonEncoderOf[CdashigScenarioFields]
}
