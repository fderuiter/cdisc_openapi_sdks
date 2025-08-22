package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigClassScenarios._

case class XmlCdashigClassScenarios (
  self: Option[CdashigClassScenarios])

object XmlCdashigClassScenarios {
  import DateTimeCodecs._

  implicit val XmlCdashigClassScenariosCodecJson: CodecJson[XmlCdashigClassScenarios] = CodecJson.derive[XmlCdashigClassScenarios]
  implicit val XmlCdashigClassScenariosDecoder: EntityDecoder[XmlCdashigClassScenarios] = jsonOf[XmlCdashigClassScenarios]
  implicit val XmlCdashigClassScenariosEncoder: EntityEncoder[XmlCdashigClassScenarios] = jsonEncoderOf[XmlCdashigClassScenarios]
}
