package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSendigDatasetVariable._

case class RootSendigDatasetVariable (
  links: Option[RootSendigDatasetVariableLinks])

object RootSendigDatasetVariable {
  import DateTimeCodecs._

  implicit val RootSendigDatasetVariableCodecJson: CodecJson[RootSendigDatasetVariable] = CodecJson.derive[RootSendigDatasetVariable]
  implicit val RootSendigDatasetVariableDecoder: EntityDecoder[RootSendigDatasetVariable] = jsonOf[RootSendigDatasetVariable]
  implicit val RootSendigDatasetVariableEncoder: EntityEncoder[RootSendigDatasetVariable] = jsonEncoderOf[RootSendigDatasetVariable]
}
