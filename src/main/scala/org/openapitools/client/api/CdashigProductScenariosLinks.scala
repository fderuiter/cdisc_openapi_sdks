package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductScenariosLinks._

case class CdashigProductScenariosLinks (
  self: Option[CdashigProductScenariosRef],
parentProduct: Option[CdashigProductRef],
scenarios: Option[List[CdashigScenarioRefElement]])

object CdashigProductScenariosLinks {
  import DateTimeCodecs._

  implicit val CdashigProductScenariosLinksCodecJson: CodecJson[CdashigProductScenariosLinks] = CodecJson.derive[CdashigProductScenariosLinks]
  implicit val CdashigProductScenariosLinksDecoder: EntityDecoder[CdashigProductScenariosLinks] = jsonOf[CdashigProductScenariosLinks]
  implicit val CdashigProductScenariosLinksEncoder: EntityEncoder[CdashigProductScenariosLinks] = jsonEncoderOf[CdashigProductScenariosLinks]
}
