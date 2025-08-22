package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamDatastructureVarsetsLinks._

case class AdamDatastructureVarsetsLinks (
  self: Option[AdamDatastructureVarsetsRef],
parentProduct: Option[AdamProductRef],
priorVersion: Option[AdamDatastructureVarsetsRef],
analysisVariableSets: Option[List[AdamVarsetRefElement]])

object AdamDatastructureVarsetsLinks {
  import DateTimeCodecs._

  implicit val AdamDatastructureVarsetsLinksCodecJson: CodecJson[AdamDatastructureVarsetsLinks] = CodecJson.derive[AdamDatastructureVarsetsLinks]
  implicit val AdamDatastructureVarsetsLinksDecoder: EntityDecoder[AdamDatastructureVarsetsLinks] = jsonOf[AdamDatastructureVarsetsLinks]
  implicit val AdamDatastructureVarsetsLinksEncoder: EntityEncoder[AdamDatastructureVarsetsLinks] = jsonEncoderOf[AdamDatastructureVarsetsLinks]
}
