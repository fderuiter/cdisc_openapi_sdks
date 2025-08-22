package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlQrsProduct._

case class XmlQrsProduct (
  self: Option[QrsProduct])

object XmlQrsProduct {
  import DateTimeCodecs._

  implicit val XmlQrsProductCodecJson: CodecJson[XmlQrsProduct] = CodecJson.derive[XmlQrsProduct]
  implicit val XmlQrsProductDecoder: EntityDecoder[XmlQrsProduct] = jsonOf[XmlQrsProduct]
  implicit val XmlQrsProductEncoder: EntityEncoder[XmlQrsProduct] = jsonEncoderOf[XmlQrsProduct]
}
