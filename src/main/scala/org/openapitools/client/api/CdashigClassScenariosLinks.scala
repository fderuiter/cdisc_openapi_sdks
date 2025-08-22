package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassScenariosLinks._

case class CdashigClassScenariosLinks (
  self: Option[CdashigClassScenariosRef],
scenarios: Option[List[CdashigScenarioRefElement]])

object CdashigClassScenariosLinks {
  import DateTimeCodecs._

  implicit val CdashigClassScenariosLinksCodecJson: CodecJson[CdashigClassScenariosLinks] = CodecJson.derive[CdashigClassScenariosLinks]
  implicit val CdashigClassScenariosLinksDecoder: EntityDecoder[CdashigClassScenariosLinks] = jsonOf[CdashigClassScenariosLinks]
  implicit val CdashigClassScenariosLinksEncoder: EntityEncoder[CdashigClassScenariosLinks] = jsonEncoderOf[CdashigClassScenariosLinks]
}
