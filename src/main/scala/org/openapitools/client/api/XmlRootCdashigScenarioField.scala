package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootCdashigScenarioField._

case class XmlRootCdashigScenarioField (
  self: Option[RootCdashigScenarioField])

object XmlRootCdashigScenarioField {
  import DateTimeCodecs._

  implicit val XmlRootCdashigScenarioFieldCodecJson: CodecJson[XmlRootCdashigScenarioField] = CodecJson.derive[XmlRootCdashigScenarioField]
  implicit val XmlRootCdashigScenarioFieldDecoder: EntityDecoder[XmlRootCdashigScenarioField] = jsonOf[XmlRootCdashigScenarioField]
  implicit val XmlRootCdashigScenarioFieldEncoder: EntityEncoder[XmlRootCdashigScenarioField] = jsonEncoderOf[XmlRootCdashigScenarioField]
}
