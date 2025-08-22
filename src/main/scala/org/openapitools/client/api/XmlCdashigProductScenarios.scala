package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigProductScenarios._

case class XmlCdashigProductScenarios (
  self: Option[CdashigProductScenarios])

object XmlCdashigProductScenarios {
  import DateTimeCodecs._

  implicit val XmlCdashigProductScenariosCodecJson: CodecJson[XmlCdashigProductScenarios] = CodecJson.derive[XmlCdashigProductScenarios]
  implicit val XmlCdashigProductScenariosDecoder: EntityDecoder[XmlCdashigProductScenarios] = jsonOf[XmlCdashigProductScenarios]
  implicit val XmlCdashigProductScenariosEncoder: EntityEncoder[XmlCdashigProductScenarios] = jsonEncoderOf[XmlCdashigProductScenarios]
}
