package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigScenario._

case class XmlCdashigScenario (
  self: Option[CdashigScenario])

object XmlCdashigScenario {
  import DateTimeCodecs._

  implicit val XmlCdashigScenarioCodecJson: CodecJson[XmlCdashigScenario] = CodecJson.derive[XmlCdashigScenario]
  implicit val XmlCdashigScenarioDecoder: EntityDecoder[XmlCdashigScenario] = jsonOf[XmlCdashigScenario]
  implicit val XmlCdashigScenarioEncoder: EntityEncoder[XmlCdashigScenario] = jsonEncoderOf[XmlCdashigScenario]
}
