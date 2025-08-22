package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashProduct._

case class XmlCdashProduct (
  self: Option[CdashProduct])

object XmlCdashProduct {
  import DateTimeCodecs._

  implicit val XmlCdashProductCodecJson: CodecJson[XmlCdashProduct] = CodecJson.derive[XmlCdashProduct]
  implicit val XmlCdashProductDecoder: EntityDecoder[XmlCdashProduct] = jsonOf[XmlCdashProduct]
  implicit val XmlCdashProductEncoder: EntityEncoder[XmlCdashProduct] = jsonEncoderOf[XmlCdashProduct]
}
