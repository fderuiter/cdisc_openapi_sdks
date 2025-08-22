package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlProducts._

case class XmlProducts (
  self: Option[Products])

object XmlProducts {
  import DateTimeCodecs._

  implicit val XmlProductsCodecJson: CodecJson[XmlProducts] = CodecJson.derive[XmlProducts]
  implicit val XmlProductsDecoder: EntityDecoder[XmlProducts] = jsonOf[XmlProducts]
  implicit val XmlProductsEncoder: EntityEncoder[XmlProducts] = jsonEncoderOf[XmlProducts]
}
