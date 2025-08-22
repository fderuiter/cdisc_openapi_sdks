package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigScenarioFields._

case class XmlCdashigScenarioFields (
  self: Option[CdashigScenarioFields])

object XmlCdashigScenarioFields {
  import DateTimeCodecs._

  implicit val XmlCdashigScenarioFieldsCodecJson: CodecJson[XmlCdashigScenarioFields] = CodecJson.derive[XmlCdashigScenarioFields]
  implicit val XmlCdashigScenarioFieldsDecoder: EntityDecoder[XmlCdashigScenarioFields] = jsonOf[XmlCdashigScenarioFields]
  implicit val XmlCdashigScenarioFieldsEncoder: EntityEncoder[XmlCdashigScenarioFields] = jsonEncoderOf[XmlCdashigScenarioFields]
}
