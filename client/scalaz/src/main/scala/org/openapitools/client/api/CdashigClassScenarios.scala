package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassScenarios._

case class CdashigClassScenarios (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[CdashigClassScenariosLinks])

object CdashigClassScenarios {
  import DateTimeCodecs._

  implicit val CdashigClassScenariosCodecJson: CodecJson[CdashigClassScenarios] = CodecJson.derive[CdashigClassScenarios]
  implicit val CdashigClassScenariosDecoder: EntityDecoder[CdashigClassScenarios] = jsonOf[CdashigClassScenarios]
  implicit val CdashigClassScenariosEncoder: EntityEncoder[CdashigClassScenarios] = jsonEncoderOf[CdashigClassScenarios]
}
