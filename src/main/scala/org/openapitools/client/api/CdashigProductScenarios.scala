package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductScenarios._

case class CdashigProductScenarios (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CdashigProductScenariosLinks])

object CdashigProductScenarios {
  import DateTimeCodecs._

  implicit val CdashigProductScenariosCodecJson: CodecJson[CdashigProductScenarios] = CodecJson.derive[CdashigProductScenarios]
  implicit val CdashigProductScenariosDecoder: EntityDecoder[CdashigProductScenarios] = jsonOf[CdashigProductScenarios]
  implicit val CdashigProductScenariosEncoder: EntityEncoder[CdashigProductScenarios] = jsonEncoderOf[CdashigProductScenarios]
}
