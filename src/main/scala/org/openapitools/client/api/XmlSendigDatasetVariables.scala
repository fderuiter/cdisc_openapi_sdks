package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSendigDatasetVariables._

case class XmlSendigDatasetVariables (
  self: Option[SendigDatasetVariables])

object XmlSendigDatasetVariables {
  import DateTimeCodecs._

  implicit val XmlSendigDatasetVariablesCodecJson: CodecJson[XmlSendigDatasetVariables] = CodecJson.derive[XmlSendigDatasetVariables]
  implicit val XmlSendigDatasetVariablesDecoder: EntityDecoder[XmlSendigDatasetVariables] = jsonOf[XmlSendigDatasetVariables]
  implicit val XmlSendigDatasetVariablesEncoder: EntityEncoder[XmlSendigDatasetVariables] = jsonEncoderOf[XmlSendigDatasetVariables]
}
