package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlAdamVarset._

case class XmlAdamVarset (
  self: Option[AdamVarset])

object XmlAdamVarset {
  import DateTimeCodecs._

  implicit val XmlAdamVarsetCodecJson: CodecJson[XmlAdamVarset] = CodecJson.derive[XmlAdamVarset]
  implicit val XmlAdamVarsetDecoder: EntityDecoder[XmlAdamVarset] = jsonOf[XmlAdamVarset]
  implicit val XmlAdamVarsetEncoder: EntityEncoder[XmlAdamVarset] = jsonEncoderOf[XmlAdamVarset]
}
