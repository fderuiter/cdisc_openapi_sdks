package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlAdamProduct._

case class XmlAdamProduct (
  self: Option[AdamProduct])

object XmlAdamProduct {
  import DateTimeCodecs._

  implicit val XmlAdamProductCodecJson: CodecJson[XmlAdamProduct] = CodecJson.derive[XmlAdamProduct]
  implicit val XmlAdamProductDecoder: EntityDecoder[XmlAdamProduct] = jsonOf[XmlAdamProduct]
  implicit val XmlAdamProductEncoder: EntityEncoder[XmlAdamProduct] = jsonEncoderOf[XmlAdamProduct]
}
