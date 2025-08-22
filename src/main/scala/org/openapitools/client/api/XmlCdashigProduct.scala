package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigProduct._

case class XmlCdashigProduct (
  self: Option[CdashigProduct])

object XmlCdashigProduct {
  import DateTimeCodecs._

  implicit val XmlCdashigProductCodecJson: CodecJson[XmlCdashigProduct] = CodecJson.derive[XmlCdashigProduct]
  implicit val XmlCdashigProductDecoder: EntityDecoder[XmlCdashigProduct] = jsonOf[XmlCdashigProduct]
  implicit val XmlCdashigProductEncoder: EntityEncoder[XmlCdashigProduct] = jsonEncoderOf[XmlCdashigProduct]
}
