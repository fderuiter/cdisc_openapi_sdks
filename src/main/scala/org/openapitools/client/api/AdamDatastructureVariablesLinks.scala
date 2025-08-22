package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamDatastructureVariablesLinks._

case class AdamDatastructureVariablesLinks (
  self: Option[AdamDatastructureVariablesRef],
parentProduct: Option[AdamProductRef],
priorVersion: Option[AdamDatastructureVariablesRef],
analysisVariables: Option[List[AdamVariableRefElement]])

object AdamDatastructureVariablesLinks {
  import DateTimeCodecs._

  implicit val AdamDatastructureVariablesLinksCodecJson: CodecJson[AdamDatastructureVariablesLinks] = CodecJson.derive[AdamDatastructureVariablesLinks]
  implicit val AdamDatastructureVariablesLinksDecoder: EntityDecoder[AdamDatastructureVariablesLinks] = jsonOf[AdamDatastructureVariablesLinks]
  implicit val AdamDatastructureVariablesLinksEncoder: EntityEncoder[AdamDatastructureVariablesLinks] = jsonEncoderOf[AdamDatastructureVariablesLinks]
}
