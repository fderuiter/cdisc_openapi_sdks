package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSendigDatasetVariable._

case class XmlSendigDatasetVariable (
  self: Option[SendigDatasetVariable])

object XmlSendigDatasetVariable {
  import DateTimeCodecs._

  implicit val XmlSendigDatasetVariableCodecJson: CodecJson[XmlSendigDatasetVariable] = CodecJson.derive[XmlSendigDatasetVariable]
  implicit val XmlSendigDatasetVariableDecoder: EntityDecoder[XmlSendigDatasetVariable] = jsonOf[XmlSendigDatasetVariable]
  implicit val XmlSendigDatasetVariableEncoder: EntityEncoder[XmlSendigDatasetVariable] = jsonEncoderOf[XmlSendigDatasetVariable]
}
