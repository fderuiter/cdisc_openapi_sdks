package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSendigClass._

case class XmlSendigClass (
  self: Option[SendigClass])

object XmlSendigClass {
  import DateTimeCodecs._

  implicit val XmlSendigClassCodecJson: CodecJson[XmlSendigClass] = CodecJson.derive[XmlSendigClass]
  implicit val XmlSendigClassDecoder: EntityDecoder[XmlSendigClass] = jsonOf[XmlSendigClass]
  implicit val XmlSendigClassEncoder: EntityEncoder[XmlSendigClass] = jsonEncoderOf[XmlSendigClass]
}
