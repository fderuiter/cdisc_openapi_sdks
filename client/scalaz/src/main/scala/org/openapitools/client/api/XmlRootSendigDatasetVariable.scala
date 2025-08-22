package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootSendigDatasetVariable._

case class XmlRootSendigDatasetVariable (
  self: Option[RootSendigDatasetVariable])

object XmlRootSendigDatasetVariable {
  import DateTimeCodecs._

  implicit val XmlRootSendigDatasetVariableCodecJson: CodecJson[XmlRootSendigDatasetVariable] = CodecJson.derive[XmlRootSendigDatasetVariable]
  implicit val XmlRootSendigDatasetVariableDecoder: EntityDecoder[XmlRootSendigDatasetVariable] = jsonOf[XmlRootSendigDatasetVariable]
  implicit val XmlRootSendigDatasetVariableEncoder: EntityEncoder[XmlRootSendigDatasetVariable] = jsonEncoderOf[XmlRootSendigDatasetVariable]
}
