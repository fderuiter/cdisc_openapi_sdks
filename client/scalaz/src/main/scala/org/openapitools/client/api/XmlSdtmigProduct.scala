package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmigProduct._

case class XmlSdtmigProduct (
  self: Option[SdtmigProduct])

object XmlSdtmigProduct {
  import DateTimeCodecs._

  implicit val XmlSdtmigProductCodecJson: CodecJson[XmlSdtmigProduct] = CodecJson.derive[XmlSdtmigProduct]
  implicit val XmlSdtmigProductDecoder: EntityDecoder[XmlSdtmigProduct] = jsonOf[XmlSdtmigProduct]
  implicit val XmlSdtmigProductEncoder: EntityEncoder[XmlSdtmigProduct] = jsonEncoderOf[XmlSdtmigProduct]
}
