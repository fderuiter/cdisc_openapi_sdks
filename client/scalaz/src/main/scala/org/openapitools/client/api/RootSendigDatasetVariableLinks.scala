package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSendigDatasetVariableLinks._

case class RootSendigDatasetVariableLinks (
  self: Option[RootSendigDatasetVariableRef],
versions: Option[List[SendigDatasetVariableRefVersion]])

object RootSendigDatasetVariableLinks {
  import DateTimeCodecs._

  implicit val RootSendigDatasetVariableLinksCodecJson: CodecJson[RootSendigDatasetVariableLinks] = CodecJson.derive[RootSendigDatasetVariableLinks]
  implicit val RootSendigDatasetVariableLinksDecoder: EntityDecoder[RootSendigDatasetVariableLinks] = jsonOf[RootSendigDatasetVariableLinks]
  implicit val RootSendigDatasetVariableLinksEncoder: EntityEncoder[RootSendigDatasetVariableLinks] = jsonEncoderOf[RootSendigDatasetVariableLinks]
}
