package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashigScenarioFieldLinks._

case class RootCdashigScenarioFieldLinks (
  self: Option[RootCdashigScenarioFieldRef],
versions: Option[List[CdashigScenarioFieldRefVersion]])

object RootCdashigScenarioFieldLinks {
  import DateTimeCodecs._

  implicit val RootCdashigScenarioFieldLinksCodecJson: CodecJson[RootCdashigScenarioFieldLinks] = CodecJson.derive[RootCdashigScenarioFieldLinks]
  implicit val RootCdashigScenarioFieldLinksDecoder: EntityDecoder[RootCdashigScenarioFieldLinks] = jsonOf[RootCdashigScenarioFieldLinks]
  implicit val RootCdashigScenarioFieldLinksEncoder: EntityEncoder[RootCdashigScenarioFieldLinks] = jsonEncoderOf[RootCdashigScenarioFieldLinks]
}
