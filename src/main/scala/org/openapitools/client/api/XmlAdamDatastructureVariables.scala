package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlAdamDatastructureVariables._

case class XmlAdamDatastructureVariables (
  self: Option[AdamDatastructureVariables])

object XmlAdamDatastructureVariables {
  import DateTimeCodecs._

  implicit val XmlAdamDatastructureVariablesCodecJson: CodecJson[XmlAdamDatastructureVariables] = CodecJson.derive[XmlAdamDatastructureVariables]
  implicit val XmlAdamDatastructureVariablesDecoder: EntityDecoder[XmlAdamDatastructureVariables] = jsonOf[XmlAdamDatastructureVariables]
  implicit val XmlAdamDatastructureVariablesEncoder: EntityEncoder[XmlAdamDatastructureVariables] = jsonEncoderOf[XmlAdamDatastructureVariables]
}
