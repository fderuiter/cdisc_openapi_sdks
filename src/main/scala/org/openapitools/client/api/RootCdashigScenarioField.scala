package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashigScenarioField._

case class RootCdashigScenarioField (
  links: Option[RootCdashigScenarioFieldLinks])

object RootCdashigScenarioField {
  import DateTimeCodecs._

  implicit val RootCdashigScenarioFieldCodecJson: CodecJson[RootCdashigScenarioField] = CodecJson.derive[RootCdashigScenarioField]
  implicit val RootCdashigScenarioFieldDecoder: EntityDecoder[RootCdashigScenarioField] = jsonOf[RootCdashigScenarioField]
  implicit val RootCdashigScenarioFieldEncoder: EntityEncoder[RootCdashigScenarioField] = jsonEncoderOf[RootCdashigScenarioField]
}
