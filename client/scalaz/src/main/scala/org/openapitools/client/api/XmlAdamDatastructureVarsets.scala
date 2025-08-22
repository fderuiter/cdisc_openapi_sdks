package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlAdamDatastructureVarsets._

case class XmlAdamDatastructureVarsets (
  self: Option[AdamDatastructureVarsets])

object XmlAdamDatastructureVarsets {
  import DateTimeCodecs._

  implicit val XmlAdamDatastructureVarsetsCodecJson: CodecJson[XmlAdamDatastructureVarsets] = CodecJson.derive[XmlAdamDatastructureVarsets]
  implicit val XmlAdamDatastructureVarsetsDecoder: EntityDecoder[XmlAdamDatastructureVarsets] = jsonOf[XmlAdamDatastructureVarsets]
  implicit val XmlAdamDatastructureVarsetsEncoder: EntityEncoder[XmlAdamDatastructureVarsets] = jsonEncoderOf[XmlAdamDatastructureVarsets]
}
