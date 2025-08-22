package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioField._

case class CdashigScenarioField (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
definition: Option[String],
questionText: Option[String],
prompt: Option[String],
completionInstructions: Option[String],
implementationNotes: Option[String],
simpleDatatype: Option[String],
mappingInstructions: Option[String],
core: Option[String],
links: Option[CdashigScenarioFieldLinks])

object CdashigScenarioField {
  import DateTimeCodecs._

  implicit val CdashigScenarioFieldCodecJson: CodecJson[CdashigScenarioField] = CodecJson.derive[CdashigScenarioField]
  implicit val CdashigScenarioFieldDecoder: EntityDecoder[CdashigScenarioField] = jsonOf[CdashigScenarioField]
  implicit val CdashigScenarioFieldEncoder: EntityEncoder[CdashigScenarioField] = jsonEncoderOf[CdashigScenarioField]
}
