package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSendigProduct._

case class XmlSendigProduct (
  self: Option[SendigProduct])

object XmlSendigProduct {
  import DateTimeCodecs._

  implicit val XmlSendigProductCodecJson: CodecJson[XmlSendigProduct] = CodecJson.derive[XmlSendigProduct]
  implicit val XmlSendigProductDecoder: EntityDecoder[XmlSendigProduct] = jsonOf[XmlSendigProduct]
  implicit val XmlSendigProductEncoder: EntityEncoder[XmlSendigProduct] = jsonEncoderOf[XmlSendigProduct]
}
