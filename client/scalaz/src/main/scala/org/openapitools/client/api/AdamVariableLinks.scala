package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamVariableLinks._

case class AdamVariableLinks (
  self: Option[AdamVariableRef],
codelist: Option[RootCtCodelistRef],
parentProduct: Option[AdamProductRef],
parentDatastructure: Option[AdamDatastructureRef],
parentVariableSet: Option[AdamVarsetRef],
priorVersion: Option[AdamVariableRef])

object AdamVariableLinks {
  import DateTimeCodecs._

  implicit val AdamVariableLinksCodecJson: CodecJson[AdamVariableLinks] = CodecJson.derive[AdamVariableLinks]
  implicit val AdamVariableLinksDecoder: EntityDecoder[AdamVariableLinks] = jsonOf[AdamVariableLinks]
  implicit val AdamVariableLinksEncoder: EntityEncoder[AdamVariableLinks] = jsonEncoderOf[AdamVariableLinks]
}
