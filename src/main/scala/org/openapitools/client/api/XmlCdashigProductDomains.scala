package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigProductDomains._

case class XmlCdashigProductDomains (
  self: Option[CdashigProductDomains])

object XmlCdashigProductDomains {
  import DateTimeCodecs._

  implicit val XmlCdashigProductDomainsCodecJson: CodecJson[XmlCdashigProductDomains] = CodecJson.derive[XmlCdashigProductDomains]
  implicit val XmlCdashigProductDomainsDecoder: EntityDecoder[XmlCdashigProductDomains] = jsonOf[XmlCdashigProductDomains]
  implicit val XmlCdashigProductDomainsEncoder: EntityEncoder[XmlCdashigProductDomains] = jsonEncoderOf[XmlCdashigProductDomains]
}
