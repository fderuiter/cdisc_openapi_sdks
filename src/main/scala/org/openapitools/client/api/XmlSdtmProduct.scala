package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmProduct._

case class XmlSdtmProduct (
  self: Option[SdtmProduct])

object XmlSdtmProduct {
  import DateTimeCodecs._

  implicit val XmlSdtmProductCodecJson: CodecJson[XmlSdtmProduct] = CodecJson.derive[XmlSdtmProduct]
  implicit val XmlSdtmProductDecoder: EntityDecoder[XmlSdtmProduct] = jsonOf[XmlSdtmProduct]
  implicit val XmlSdtmProductEncoder: EntityEncoder[XmlSdtmProduct] = jsonEncoderOf[XmlSdtmProduct]
}
