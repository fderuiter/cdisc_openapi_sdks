package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigScenarioField._

case class XmlCdashigScenarioField (
  self: Option[CdashigScenarioField])

object XmlCdashigScenarioField {
  import DateTimeCodecs._

  implicit val XmlCdashigScenarioFieldCodecJson: CodecJson[XmlCdashigScenarioField] = CodecJson.derive[XmlCdashigScenarioField]
  implicit val XmlCdashigScenarioFieldDecoder: EntityDecoder[XmlCdashigScenarioField] = jsonOf[XmlCdashigScenarioField]
  implicit val XmlCdashigScenarioFieldEncoder: EntityEncoder[XmlCdashigScenarioField] = jsonEncoderOf[XmlCdashigScenarioField]
}
