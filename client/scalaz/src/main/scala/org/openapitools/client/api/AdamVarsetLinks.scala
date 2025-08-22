package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamVarsetLinks._

case class AdamVarsetLinks (
  self: Option[AdamVarsetRef],
parentProduct: Option[AdamProductRef],
parentDatastructure: Option[AdamDatastructureRef],
priorVersion: Option[AdamVarsetRef])

object AdamVarsetLinks {
  import DateTimeCodecs._

  implicit val AdamVarsetLinksCodecJson: CodecJson[AdamVarsetLinks] = CodecJson.derive[AdamVarsetLinks]
  implicit val AdamVarsetLinksDecoder: EntityDecoder[AdamVarsetLinks] = jsonOf[AdamVarsetLinks]
  implicit val AdamVarsetLinksEncoder: EntityEncoder[AdamVarsetLinks] = jsonEncoderOf[AdamVarsetLinks]
}
